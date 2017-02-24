using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/*
 * moving a lot of code from Unit's previous Attack() method
 * manage the battle when a battle is initiated
 * 1) load in battle scene
 * -probably means locking the camera because there is no "battle screen" you are brought to, enemies just appear in the dungeon
 * 2) instantiate enemies and fill player array with each game object with the "player" tag
 * -enemies should be instantiated based on an "enemy name" array, which will probably be accessed by other scripts
 * -or I guess random/semi random enemy generation can possibly happen here
 * 3) call attack with each unit
 * 4) if attacked unit's health <= 0, destroy it and remove it from the list
 * -if enemy count == 0, endBattle()
 * -if player count == 0, endGame()
 * -check for endGame first just in case the player and the enemy loses at the same time 
 */

public class BattleManager : MonoBehaviour {

    private IEnumerator atkCoroutine; //used by Attack()

    public GameObject[] enemyArray; //array of enemy game objects, filled in setUnits based on tag
    public GameObject[] playerArray; //array of player game objects

    private Unit enemy, player; //used to fill player and enemy lists. Could be one var, made it two for clarity

    private List<Unit> enemies, players; //fill this with unit scripts for modification

    // Use this for initialization
    void Start ()
    {
        SetUnits();
        Debug.Log("SIZE OF ENEMIES AND PLAYERS AFTER SETUNITS: " + enemyArray.Length + " " + playerArray.Length);

        //I don't like how this is working right now.
        //essentially, start a coroutine for each unit
        //however, this means that every enemy is going to have to wait for every player to start
        //even if it's not even noticeable it feels weird.
        for (int i = 0; i < playerArray.Length; i++)
        {
            atkCoroutine = Attack(players[i]);
            StartCoroutine(atkCoroutine);
        } //end for

        for (int i = 0; i < enemyArray.Length; i++)
        {
            atkCoroutine = Attack(enemies[i]);
            StartCoroutine(atkCoroutine);
        } //end for
    }
	
	// Update is called once per frame
	void Update () 
    {
		
	} //end Update

    //select a random enemy
    //choose random attack (chances could be modified by stats) and swing
    //subtract health from enemy attacked
    private IEnumerator Attack(Unit attacking)
    {

        Debug.Log("Attacking!");

        int atkChoice = 0;

        bool keepGoing = true;

        //attack till you die or they all die
        //if other states can be chosen by the player, like "defensive" stance or whatever
        //just perform this while the attack state is active
        while (keepGoing)
        {
            //change the target/some other parameters based on what kind of unit this is
            if (attacking.gameObject.tag == "Player")
            {
                atkChoice = RandGenerate(enemies.Count); //choose a random enemy

                enemy = enemies[atkChoice];

                //TODO remove gameObject from the array if it is going to be destroyed
                //an obvious error is raised otherwise as you will probably try to access a gameobject which has been destroyed
                if ((enemy.Health - attacking.weapons[attacking.weaponChoice].Damage) <= 0)
                {
                    Debug.Log("enemy will be KILL");
                    Debug.Log("result of remove: " + enemies.Remove(enemy));
                    Debug.Log("new size of list: " + enemies.Count);
                    enemy.Health -= attacking.weapons[attacking.weaponChoice].Damage;
                    keepGoing = false;
                } //end if

                enemy.Health -= attacking.weapons[attacking.weaponChoice].Damage;

                Debug.Log("Name of damaged yout and health " + enemy.name_ + " " + enemy.Health + "\n");

            } //end if

            else if (attacking.gameObject.tag == "Enemy")
            {
                atkChoice = RandGenerate(players.Count); //choose a random enemy

                player = players[atkChoice];

                //TODO remove gameObject from the array if it is going to be destroyed
                //an obvious error is raised otherwise as you will probably try to access a gameobject which has been destroyed
                if ((player.Health - attacking.weapons[attacking.weaponChoice].Damage) <= 0)
                {
                    Debug.Log("player will be KILL");
                    Debug.Log("result of remove: " + players.Remove(enemy));
                    Debug.Log("new size of list: " + players.Count);
                    player.Health -= attacking.weapons[attacking.weaponChoice].Damage;
                    keepGoing = false;
                } //end if

                player.Health -= attacking.weapons[attacking.weaponChoice].Damage;

                Debug.Log("Name of damaged yout and health " + player.name_ + " " + player.Health + "\n");

            } //end else if

            //attack every few seconds based on the speed of the weapon
            yield return new WaitForSeconds(attacking.weapons[attacking.weaponChoice].Speed);
        } //end while

        if (players.Count <= 0)
        {
            GameOver();
        } //end if

        else if (enemies.Count <= 0)
        {
            BattleOver();
        } //end else if
    } //end Attack

    //generate random number for attack and unit selection
    //pass in size of the array for divying out divisions
    //choose the number which is greater than each "division", it chose that number on the list
    private int RandGenerate(int size)
    {
        int optDivision, choice = 0, randNum;

        randNum = Random.Range(0, 100);

        optDivision = 100 / size;

        //now that 100 has been divided by the amount of targets and the "divisions" are in place
        //find out which division the random number fell in range of, the person we're attacking
        //break loop when they're identified
        for (int i = 0; i < size; i++)
        {
            if (randNum < (optDivision * i))
            {
                choice = i;
                break;
            } //end if
        } //end for

        return choice;
    } //end RandGenerate

    private void SetUnits()
    {
        //set the corresponding enemy given the tag of the gameObject this script is attached to
        //enemies are placed into the scene using the enemyManager script
        enemyArray = GameObject.FindGameObjectsWithTag("Enemy");
        playerArray = GameObject.FindGameObjectsWithTag("Player");

        Debug.Log("size of enemyArray and playerArray inside setUnits: " + enemyArray.Length + " " + playerArray.Length);

        //for each game object found, fill the unit script list with that object's unit script
        for (int i = 0; i < enemyArray.Length; i++)
        {
            enemy = enemyArray[i].GetComponent<Unit>();
            Debug.Log("enemy name in loop and i " + enemy.Name + " " + i);
            enemies.Add(enemy);
        } //end for

        for (int i = 0; i < playerArray.Length; i++)
        {
            player = playerArray[i].GetComponent<Unit>();
            players.Add(player);
        } //end for
    } //end setEnemies

    //TODO 
    //game over screen, call if there are no more players
    //switch the scene that we're in to some game over screen
    private void GameOver()
    {
        Debug.Log("Game over");
    } //end GameOver

    //TODO 
    //battle ended screen, call if there are no more enemies
    //divvy out experience? I guess that's probably done when the enemy units are killed
    //definitely either switch screen or give control back to the player to move around again
    private void BattleOver()
    {
        Debug.Log("Battle over! Congratz");
    } //end BattleOver
} //end BattleManager
