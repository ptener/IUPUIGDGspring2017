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
    public int weaponChoice; //used to select a weapon from the weapon list

    //string variables
    //I'm not sure how to handle attacks yet but for now I'll store them as strings
    //"if attack == 'BUSTER_BLADE69'" - set stats equal to those of that attack
    //so in the damage function (or whatever function it ends up being) set a damage/hit rate/whatever else variable depending on
    //the contents of this string.
    //now that I think about it, it would probably be a better idea to just have each attack be an object property of the unit

    public string name_;
    public string enemy_name_; //holds name of enemy object to look for to attack

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
        health_ = 100;
        level_ = 1;

        name_ = name;
    } //end overloaded constructor

    // Use this for initialization
    void Start()
    {

    } //end Start

    // Update is called once per frame
    void Update()
    {

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
                //create some other manager script that will be used when any units die
                //when a player dies, call it and check if there are more than 0 players
                //if not, launch game over screen
                //
                //if the enemy dies, check if there are more than 0 enemies
                //if not, end the battle
                //maybe these can be in your generic "battle manager" script that you'll need to build anyway
                Debug.Log(name_ + " is KILL");
                Destroy(gameObject);
        } //end set
    } //end property

    //name property
    //making this a property so that weapons and other properties of the unit can be set automatically when the name is set
    public string Name
    {
        get
        {
            return name_;
        } //end get

        set
        {
            name_ = value;

            //test values yet to be modified
            //you get the idea though: change properties based on name
            //not really using this right now, just keeping it in comments for future reference
            /*
            if (name_ == "1")
            {
                Health = 40;
                weapon.Name = "socketWrench";
                enemy.weapons.Add(weapon); //putting this on different lines just in case I want to give certain enemies more weapons
            } //end if

            else if (name_ == "2")
            {
                Health = 50;
                weapon.Name = "steelPole";
                enemy.weapons.Add(weapon);
            } //end if

            else if (name_ == "3")
            {
                Health = 60;
                weapon.Name = "weldingTorch";
                enemy.weapons.Add(weapon);
            } //end if
            */
        } //end set
    } //end property
    
    //set the weapons in the weapons list using the "weaponNames" string list
    private void setWeapons()
    {
        //if no one has set any weapons, at least give poor dude their fists to work with
        if (weaponNames.Count == 0)
        {
            weaponNames.Add("fist");
        } //end if

        for (int i = 0; i < weaponNames.Count; i++)
        {
            weapon.Name = weaponNames[i];
            weapons.Add(weapon);
        } //end for
    } //end setWeapons
} //end Unit
