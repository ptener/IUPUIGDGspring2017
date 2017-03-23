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
    private bool defending_ = false; //if this unit is defending, halve damage but don't let it attack
    public bool alive_ = true;
    public bool focusing_ = false; //check if the player is trying to get this unit to focus an enemy, otherwise choose random person to attack
    public bool pause_ = false; //check if the unit is performing some action that will break its attack time ie switching target

    private int health_;
    private int startingHealth_ = 10; //separate property to hold the health we want to start each unit at (mainly for testing)
    public int weaponChoice; //used to select a weapon from the weapon list
    public int atkChoice; 
    
    public string name_ = "";

    private Weapon weapon;

    public List<Weapon> weapons;
    public List<string> weaponNames;

    //default unit constructor
    //variables to initialize: health, level, maybe class type or however else we decide to design this
    public Unit()
    {
        
    } //end constructor

    //unit constructor with the name
    public Unit (string name)
    {
        health_ = startingHealth_;
        name_ = name;
        atkChoice = 0;
    } //end overloaded constructor

    // Use this for initialization
    void Start()
    {
        //only do this if the default constructor was called
        if (name_ == "")
        {
            //originally in the constructor but apparently you shouldn't use the unity API in constructor so here
            //players have a default health of 30
            if (gameObject.tag == "Player")
            {
                health_ = 30;
            } //end if

            //enemy health should probably depend on the enemy type
            else
            {
                health_ = startingHealth_;
                setEnemy();
            } //end else
            atkChoice = 0;
        } //end if
    } //end Start

    // Update is called once per frame
    void Update()
    {
        if (gameObject.tag == "Player")
        {

        } //end if
    } //end Update

    //built in function utilizing the box collider on the sprite
    //detects mouse click: at this stage, just check if its an enemy and if it is, focus them
    void OnMouseDown()
    {
        if (gameObject.tag == "Enemy")
        {
            BattleManager.setTarget(this);
        } //end if
    } //end OnMouseDown

    public bool Defending
    {
        get { return defending_;  }
        set { defending_ = value; }
    } //end property

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

            if (health_ <= 0)
            {
                Debug.Log(name_ + " is KILL");
                alive_ = false;
                Destroy(gameObject);
            } //end if

            //player should be stunned when they are attacked
            //when will they not be stunned? Should I check that the time is within 2-3 seconds of the attack
            //being executed?
            else if (gameObject.tag == "Player")
            {
                pause_ = true;
            } //end else if
        } //end set
    } //end property

    //I realize it's weird to add a getter and setter for a variable which is public anyway
    //but I'm just doing this so it's easy to change in the inspector, for now
    //name property
    //making this a property so that weapons and other properties of the unit can be set automatically when the name is set
    public string Name
    {
        get
        { return name_; } //end get

        set
        { name_ = value; } //end set
    } //end property

    //method to be called by the name constructor
    //sets stats for the unit based on name
    private void setEnemy()
    {
        if (name_ == "Sentry")
        {
            Health = 40;
            weapon.Name = "sentryQuick";
            weapons.Add(weapon);
            weapon.Name = "sentryHeavy";
            weapons.Add(weapon);
        } //end if

        else if (name_ == "Pede")
        {
            Health = 30;
            weapon.Name = "pedeQuick";
            weapons.Add(weapon);
            weapon.Name = "pedeHeavy";
            weapons.Add(weapon);
        } //end if

        else if (name_ == "Shadow")
        {
            Health = 20;
            weapon.Name = "shadowQuick";
            weapons.Add(weapon);
            weapon.Name = "shadowHeavy";
            weapons.Add(weapon);
        } //end if
    } //end setEnemy

    //set the weapons in the weapons list using the "weaponNames" string list
    public void setWeapons()
    {
        //if no one has set any weapons, at least give poor dude their fists to work with
        if (weaponNames.Count == 0)
        {
            Weapon weapon = gameObject.GetComponent<Weapon>();
            weapon.Name = "fist";
            weapons.Add(weapon);
        } //end if

        for (int i = 0; i < weaponNames.Count; i++)
        {
            Weapon weapon = gameObject.GetComponent<Weapon>();
            weapon.Name = weaponNames[i];
            weapons.Add(weapon);
        } //end for
    } //end setWeapons
} //end Unit
