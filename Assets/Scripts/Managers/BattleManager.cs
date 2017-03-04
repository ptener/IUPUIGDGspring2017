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

public class BattleManager : MonoBehaviour
{
    private bool attacking = true; //possibly change to an int if more strategies than "attacking" and "defending" will be used

    //copied from EnemyManager.cs
    private int spriteSize; //used to spawn each sprite in the correct location proportional to how many there are and the size of the sprite

    public string[] enemyNames;

    private GameObject[] playerGOs;
    private GameObject enemyGO;
    public GameObject enemyPrefab;
    public Unit enemyUnit;

    private Transform spawnLoc;
    public Transform[] spawnPoints; //holds locations of where to spawn the enemies

    private Sprite sprite;

    private IEnumerator atkCoroutine; //used by Attack()

    private Unit enemy, player; //used to fill player and enemy lists. Could be one var, made it two for clarity

    private List<Unit> enemyUnits, playerUnits; //fill this with unit scripts for modification
    public List<GameObject> enemies, players;

    // Use this for initialization
    void Start ()
    {
        enemyUnits = new List<Unit>();
        playerUnits = new List<Unit>();
        enemyPrefab = (GameObject)Resources.Load("prefabs/enemy1");
        enemyUnit = GetComponent<Unit>();
        sprite = (Sprite)Resources.Load("Assets/sprites/enemy1"); //load the test sprite in
        Spawn();

        SetUnits();
        Debug.Log("SIZE OF ENEMIES AND PLAYERS AFTER SETUNITS: " + enemyUnits.Count + " " + playerUnits.Count);

        //I don't like how this is working right now.
        //essentially, start a coroutine for each unit
        //however, this means that every enemy is going to have to wait for every player to start
        //even if it's not even noticeable it feels weird.
        for (int i = 0; i < playerUnits.Count; i++)
        {
            atkCoroutine = Attack(playerUnits[i]);
            StartCoroutine(atkCoroutine);
        } //end for

        for (int i = 0; i < enemyUnits.Count; i++)
        {
            atkCoroutine = Attack(enemyUnits[i]);
            StartCoroutine(atkCoroutine);
        } //end for


    } //end Start
	
	// Update is called once per frame
	void Update () 
    {
        string keyPressed = Input.inputString;
        int numChoice = 0;

        //check if the user inputted a number within range this frame
        //if so, set the unit in position choice - 1 to a different strategy
        //if attacking, defend, and if defending, attack 
        if (int.TryParse(keyPressed, out numChoice))
        {
            if (numChoice < playerUnits.Count && numChoice > 0)
            {
                playerUnits[numChoice - 1].Defending = !playerUnits[numChoice - 1].Defending;
            } //end if
        } //end if
	} //end Update

    //select a random enemy
    //choose random attack (chances could be modified by stats) and swing
    //subtract health from enemy attacked
    private IEnumerator Attack(Unit attacking)
    {

        Debug.Log("Attacking!");

        int atkChoice = 0;
        int damageTaken = 0; //holds the damage the attacked will take

        bool keepGoing = true;

        //need to check that the choice of the weapon is within range
        //if not, just set the value to zero
        if (attacking.weaponChoice > attacking.weapons.Count)
        {
            Debug.Log("weaponChoice > weaponsCount: " + attacking.weaponChoice + " > " + attacking.weapons.Count);
            attacking.weaponChoice = 0;
        } //end if

        //attack till you die or they all die
        //if other states can be chosen by the player, like "defensive" stance or whatever
        //just perform this while the attack state is active
        while (keepGoing)
        {
            Debug.Log("Speed of weapon: " + attacking.weapons[attacking.weaponChoice].Speed);

            if (playerUnits.Count <= 0)
            {
                GameOver();
                keepGoing = false;
            } //end if

            else if (enemyUnits.Count <= 0)
            {
                BattleOver();
                keepGoing = false;
            } //end if

            if (!attacking.Defending) //can't attack if you're defending
            {
                //change the target/some other parameters based on what kind of unit this is
                if (attacking.gameObject.tag == "Player")
                {
                    //if the enemy is defending, divide the damage taken by two
                    //do this for if the enemy is attacking, as well
                    if (enemy.Defending)
                    {
                        damageTaken = (attacking.weapons[attacking.weaponChoice].Damage / 2);
                    } //end if

                    else
                    {
                        damageTaken = attacking.weapons[attacking.weaponChoice].Damage;
                    } //end else

                    atkChoice = RandGenerate(enemyUnits.Count); //choose a random enemy

                    enemy = enemyUnits[atkChoice];

                    //TODO remove gameObject from the array if it is going to be destroyed
                    //an obvious error is raised otherwise as you will probably try to access a gameobject which has been destroyed
                    if (enemy.Health - damageTaken <= 0)
                    {
                        Debug.Log("enemy will be KILL");
                        Debug.Log("size of enemyUnits before remove: " + enemyUnits.Count);
                        Debug.Log("result of remove: " + enemyUnits.Remove(enemy));
                        Debug.Log("new size of enemyUnits: " + enemyUnits.Count);
                        enemy.Health -= attacking.weapons[attacking.weaponChoice].Damage;
                    } //end if

                    Debug.Log("Name of damaged yout and health " + enemy.Name + " " + enemy.Health + "\n");

                } //end if

                else if (attacking.gameObject.tag == "Enemy")
                {
                    atkChoice = RandGenerate(playerUnits.Count); //choose a random enemy

                    player = playerUnits[atkChoice];

                    if (player.Defending)
                    {
                        damageTaken = (attacking.weapons[attacking.weaponChoice].Damage / 2);
                    } //end if

                    else
                    {
                        damageTaken = attacking.weapons[attacking.weaponChoice].Damage;
                    } //end else

                    //TODO remove gameObject from the array if it is going to be destroyed
                    //an obvious error is raised otherwise as you will probably try to access a gameobject which has been destroyed
                    if ((player.Health - damageTaken) <= 0)
                    {
                        Debug.Log("player will be KILL");
                        Debug.Log("size of playerUnits before remove: " + playerUnits.Count);
                        Debug.Log("result of remove: " + playerUnits.Remove(player));
                        Debug.Log("new size of playerUnits: " + playerUnits.Count);
                        player.Health -= attacking.weapons[attacking.weaponChoice].Damage;
                    } //end if

                    player.Health -= damageTaken;

                    Debug.Log("Name of damaged yout and health " + player.Name + " " + player.Health + "\n");
                } //end else if
            } //end if

            Debug.Log("name, speed, player, and enemy counts: " + attacking.Name + " " + attacking.weapons[attacking.weaponChoice].Speed +
                " " + playerUnits.Count + " " + enemyUnits.Count);

            //attack every few seconds based on the speed of the weapon
            yield return new WaitForSeconds(attacking.weapons[attacking.weaponChoice].Speed);
        } //end while
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
        players.AddRange(GameObject.FindGameObjectsWithTag("Player"));
        
        //for each game object found, fill the unit script list with that object's unit script
        /*
        for (int i = 0; i < enemies.Count; i++)
        {
            enemy = enemyArray[i].GetComponent<Unit>();
            Debug.Log("enemy name in loop and i " + enemy.Name + " " + i);
        } //end for
        */

        for (int i = 0; i < players.Count; i++)
        {
            player = players[i].GetComponent<Unit>();
            player.setWeapons();
            playerUnits.Add(player);
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

    public void Spawn()
    {
        float prevLoc = 0.0f;

        //TODO
        //I'm trying to make it so that, depending on the number of enemies spawned and their sprite size, they start spawnin
        //on the left side of the screen. I'm trying to use ScreenToWorldPoint to achieve this, but I believe that I'm doing 
        //something wrong because it's not giving me the left side of the screen.
        Vector3 stageDimensions = Camera.main.ScreenToWorldPoint(new Vector3(Screen.width, Screen.height, 0));
        //Vector3 stageDimensions = Camera.main.ScreenToWorldPoint(new Vector3(0, 0, 0));

        for (int i = 0; i < enemyNames.Length; i++)
        {
            //use gameObject.transform to get the spawn location
            //divide the space up by the amount of enemies total

            spriteSize = (int)enemyPrefab.GetComponent<Renderer>().bounds.size.x;

            spawnLoc = gameObject.transform;
            Vector3 location = spawnLoc.position;

            if (i == 0) //placeholder for now: shouldn't have enemy on far left of screen if there are only two enemies.
            {
                location.x = stageDimensions.x;
            } //end if

            else
            {
                location.x = prevLoc + spriteSize;
            } //end else
            /*
            //if we're less than halfway through the list, subtract the x position by index * sizeof screen/enemyNames.length
            //this will hopefully make it so that if four enemies should spawn, they'll be placed in consistent locations
            if (i < (enemyNames.Length / 2))
            {
                //location.x -= ((i + 1) * spriteSize); //i + 1 because when i == 0, two sprites spawn on top of each other
            } //end if

            else if (i > (enemyNames.Length / 2))
            {
                location.x += ((i + 1 - (i / 2)) * spriteSize);
            } //end else if
            */

            prevLoc = location.x; //place the following sprite next to this one, maybe skewed a bit if you want
            
            enemyGO = (GameObject)Instantiate(enemyPrefab, location, transform.rotation);
            enemyGO.tag = "Enemy";
            enemyUnit = enemyGO.GetComponent<Unit>();
            enemyUnit.Name = enemyNames[i];
            Debug.Log(enemyUnit.Name);
            enemyUnit.weaponNames = weaponFill(enemyUnit.Name); //set the weapons of the unit based on the enemy's name
            enemyUnit.setWeapons();
            enemyUnits.Add(enemyUnit);
            enemies.Add(enemyGO);
        } //end for
    } //end spawn

    //fill the weapons for the enemy
    //pass in name as this is what the weapons will be filled based on
    //return a list. Fill the unit script's weapon list with the result of this method
    private List<string> weaponFill(string name)
    {
        List<string> weapNames = new List<string>();
        if (name == "famous")
        {
            weapNames.Add("screwDriver");
            weapNames.Add("steelPole");
        } //end if

        else if (name == "shamus")
        {
            weapNames.Add("powerDrill");
            weapNames.Add("monkeyWrench");
        } //end else if

        else if (name == "real")
        {
            weapNames.Add("weldingTorch");
            weapNames.Add("socketWrench");
        } //end else if

        else
        {
            weapNames.Add("fist");
            weapNames.Add("opwerDrill");
        } //end else

        return weapNames;
    } //end weaponFill
} //end BattleManager
