using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//Player object. Still basic prototype
//you shoudl probably just convert this to a "unit" object that can create either player or bot units
//maybe have them extend this one.
public class Unit : MonoBehaviour
{
    //properties we almost definitely need
    //I'm making these public only for the momenet
    //public variables are easier to manipulate on the fly so I'll start them like this and edit them later on as needed
    //also I'm not sure what types these will need so I'm starting them as ints (again, for ease of use)

    public int health_;
    public int level_;
    public int xp_;

    //string variables
    //I'm not sure how to handle attacks yet but for now I'll store them as strings
    //"if attack == 'BUSTER_BLADE69'" - set stats equal to those of that attack
    //so in the damage function (or whatever function it ends up being) set a damage/hit rate/whatever else variable depending on
    //the contents of this string.
    //now that I think about it, it would probably be a better idea to just have each attack be an object property of the unit

    public string name_;
    public string enemy_name_; //holds name of enemy object to look for to attack

    public List<string> attacks; //holds name of each attack, list because they could have more or less attacks

    public List<Unit> enemies; //for testing

    public GameObject toAttack; //unit to attack

    IEnumerator atkCoroutine;

    Unit enemyScript;// = toAttack.GetComponent<Unit>(); //holds the script of the enemy we're attacking

    //default unit constructor
    //variables to initialize: health, level, maybe class type or however else we decide to design this
    public Unit()
    {

    } //end constructor

    //unit constructor with the name
    public Unit (string name)
    {
        health_ = 100;
        level_ = 1;
        xp_ = 0;

        attacks.Add("wompusBlast");
        attacks.Add("butkusBash");
        attacks.Add("punch");
        attacks.Add("getsTheBacon");

        name_ = name;
    } //end overloaded constructor

    // Use this for initialization
    void Start()
    {
        Unit test = new Unit();
        test.name_ = "ya boi max b";
        enemies.Add(test);
        test.name_ = "SLAW";
        enemies.Add(test);

        toAttack = GameObject.Find(enemy_name_);
        enemyScript = toAttack.GetComponent<Unit>();
        Debug.Log("enemy name " + enemyScript.name_);
        //enemyScript = toAttack.GetComponent<Unit>();
        atkCoroutine = Attack(enemies);
        StartCoroutine(atkCoroutine);
    } //end Start

    // Update is called once per frame
    void Update()
    {
        /*
        if (enemyScript.health_ <= 0)
        {
            StopCoroutine(atkCoroutine);
        } //end if
        */
    } //end Update

    //making the variable into a property so I can check if health <= 0 each time health is changed
    public int Health
    {
        get
        {
            return health_;
        } //end get

        set
        {
            health_ = value;
            if (true)
            {
                //TODO game over
                System.Console.Write("big man is KILL");
            } //end if
        } //end set
    } //end property

    //generate random number for attack and unit selection
    //pass in size of the array for divying out divisions
    //choose the number which is greater than each "division", it chose that number on the list
    private static int RandGenerate(int size)
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

    //select a random enemy
    //choose random attack (chances could be modified by stats) and swing
    //subtract health from enemy attacked
    private IEnumerator Attack(List<Unit> targetOptions)
    {
        Debug.Log("Attacking!");
        Debug.Log("Health of enemy: " + enemyScript.health_);
        Debug.Log("Size of attacks " + attacks.Count);
        //Random atkGen = new UnityEngine.Random();

        Unit target;

        string attackName = "";

        int targetChoice, atkChoice, damage = 0;

        while (enemyScript.health_ > 0)
        {
            //targetChoice = RandGenerate(targetOptions.Count);
            atkChoice = RandGenerate(attacks.Count);
            attackName = attacks[atkChoice];

            //assign values depending on the name
            if (attackName == "wompusBlast")
            {
                damage = 1;
            } //end if

            else if (attackName == "butkusBash")
            {
                damage = 2;
            } //end else if

            else if (attackName == "punch")
            {
                damage = 3;
            } //end else if

            else if (attackName == "getsTheBacon")
            {
                damage = 4;
            } //end else if

            //target = targetOptions[targetChoice];
            enemyScript.health_ -= damage;

            Debug.Log("Name of damaged yout and health " + enemyScript.name_ + " " + enemyScript.health_ + "\n");

            yield return new WaitForSeconds(2);
        } //end while

        Debug.Log("RIPE " + enemyScript.name_);
    } //end Attack
} //end Unit
