using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//Player object. Still basic prototype
//you shoudl probably just convert this to a "unit" object that can create either player or bot units
//maybe have them extend this one.
public class Player : MonoBehaviour
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
    public string attack1_;
    public string attack2_;
    public string attack3_;
    public string attack4_;

    //default player constructor
    //variables to initialize: health, level, maybe class type or however else we decide to design this
    public Player()
    {

    } //end constructor

    //player constructor with the name
    public Player (string name)
    {
        health_ = 100;
        level_ = 1;
        xp_ = 0;

        attack1_ = "wompusBlast";
        attack2_ = "butkusBash";
        attack3_ = "punch";
        attack4_ = "getsTheBacon";

        name_ = name;
    } //end overloaded constructor

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
                //TODO game over
                System.Console.Write("big man is KILL");
            } //end if
        } //end set
    } //end property

	// Use this for initialization
	void Start ()
    {
		
	}
	
	// Update is called once per frame
	void Update ()
    {
		
	}
} //end Player
