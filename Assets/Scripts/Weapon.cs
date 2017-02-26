using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//weapon held by each unit
public class Weapon : MonoBehaviour
{
    private string name_;

    private int damage_;
    private float speed_;

	// Use this for initialization
	void Start ()
    {
		
	} //end start
	
	// Update is called once per frame
	void Update ()
    {
		
	} //end update

    Weapon(string name)
    {
        name_ = name;
        setStats();
    } //end constructor

    public string Name
    {
        get
        {
            return name_;
        } //end get

        set
        {
            name_ = value;
            setStats();
        } //end set
    } //end property

    public int Damage
    {
        get { return damage_; }
        set { damage_ = value; }
    } //end property

    public float Speed
    {
        get { return speed_; }
        set { speed_ = value; }
    } //end property

    //set the properties of the weapon based on the name
    //could do this in the constructor but I'll make it its own method just in case I can reuse it later
    void setStats()
    {
        if (name_ == "screwDriver")
        {
            damage_ = 1;
            speed_ = 1.0f;
        } //end if

        else if (name_ == "socketWrench")
        {
            damage_ = 2;
            speed_ = 1.0f;
        } //end else if

        else if (name_ == "powerDrill")
        {
            damage_ = 3;
            speed_ = 2.0f;
        } //end else if

        else if (name_ == "monkeyWrench")
        {
            damage_ = 4;
            speed_ = 2.0f;
        } //end else if

        else if (name_ == "steelPole")
        {
            damage_ = 5;
            speed_ = 3.0f;
        } //end else if

        else if (name_ == "weldingTorch")
        {
            damage_ = 6;
            speed_ = 4.0f;
        } //end else if

        else if (name_ == "fist")
        {
            damage_ = 1;
            speed_ = 6.0f;
        } //end else if
    } //end setStats
} //end weapon class
