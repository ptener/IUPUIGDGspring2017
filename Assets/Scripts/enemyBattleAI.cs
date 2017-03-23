using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//pretty self explanatory, used for enemy decision making in battle
public class enemyBattleAI : MonoBehaviour
{
    //we don't want the enemy to choose the same enemy each time, just be more likely to choose them. Use this in addition to the Random.Range method
    float pickChance = 6.5f; 

	// Use this for initialization
	void Start ()
    {
		
	} //end Start
	
	// Update is called once per frame
	void Update ()
    {
		
	} //end Update

    //take in the enemy unit to determine strategy/set atkChoice and the playerUnits collection to choose based on stats
    private void setTarget (List<Unit> enemyUnits, List<Unit> playerUnits)
    {
        List<int> atkChoices = new List<int>(); //used by the pede to determine who to attack: they should 
        for (int i = 0; i < enemyUnits.Count; i++)
        {
            int choice = -1;
            //highest health among the units and the attack of that unit
            //keep track of the attack to deal with ties. If there is a tie in health attack the one with the higher attack
            int topHealth = -1, atkOfChoice = -1;

            int lowHealth = 9999; //lowest overall health
            int lowestHealthOfBlocking = 9999; //lowest health of all of the blocking targets
            int lowestHealthChoice = -1; //use if there are no enemies defending: we still need to pick the enemy with the lowest health


            string name = enemyUnits[i].Name;
            for (int j = 0; j < playerUnits.Count; j++)
            {
                if (name == "Sentry")
                {
                    if (playerUnits[j].Health > topHealth)
                    {
                        topHealth = playerUnits[j].Health;
                        atkOfChoice = playerUnits[j].weapons[playerUnits[j].weaponChoice].Damage;
                        choice = j;
                    } //end if

                    else if (playerUnits[j].Health == topHealth && playerUnits[j].weapons[playerUnits[j].weaponChoice].Damage > atkOfChoice)
                    {
                        topHealth = playerUnits[j].Health;
                        atkOfChoice = playerUnits[j].weapons[playerUnits[j].weaponChoice].Damage;
                        choice = j;
                    } //end else if
                } //end if

                //shadows are cowards so they should want to attack units who are blocking the most
                //otherwise they should want to attack the unit with the least amount of health
                else if (name == "Shadow")
                {
                    if (playerUnits[j].Defending)
                    {
                        //if this unit is blocking and has the lowest health among all blockers, it is the definite choice
                        if (playerUnits[j].Health < lowestHealthOfBlocking)
                        {
                            lowestHealthOfBlocking = playerUnits[j].Health;
                            choice = j;
                        } //end if
                    } //end if

                    if (playerUnits[j].Health < lowHealth)
                    {
                        lowHealth = playerUnits[j].Health;
                        lowestHealthChoice = j;
                    } //end if
                } //end else if
            } //end for

            if (name == "Shadow")
            {
                //if there was no blocking enemy
                if (lowestHealthOfBlocking == 9999)
                {
                    choice = lowestHealthChoice;
                } //end if
            } //end if

            //the unit is only focusing if they did not choose a random target
            if (choice != -1)
            {
                enemyUnits[i].atkChoice = choice;
                enemyUnits[i].focusing_ = true;
                atkChoices.Add(choice);
            } //end if

            else
            {

            } //end else
        } //end for

        //this next section is exclusively for pedes, as they're to want to attack the players that are currently being attacked the most
        //I'm just going to iterate through every single enemy again, why not? You're barely losing any efficienty plus who cares lol
        for (int i = 0; i < enemyUnits.Count; i++)
        {
            if (enemyUnits[i].Name == "Pede")
            {
                if (atkChoices.Count > 0)
                {
                    Dictionary<int, int> options = new Dictionary<int, int>();

                    for (int i = 0; i < atkChoices.Count; i++)
                    {
                        //try to insert the value straight: if it works, great
                        //if not just increment the value because that value has already been inserted
                        try
                        {
                            options.Add(atkChoices[i], 1);
                        } //end try

                        //TODO make sure this exception is being caught correctly, I'm a bit wary about it
                        catch (System.ArgumentException)
                        {
                            options[atkChoices[i]] += 1; //increment the amount
                        } //end catch
                    } //end for

                    int bestCount = -1, bestChoice = -1;

                    //move through each element in the dictionary, recording the elements which appeared most frequently
                    foreach (KeyValuePair<int, int> entry in options)
                    {
                        if (entry.Value > bestCount)
                        {
                            bestCount = entry.Value;
                            bestChoice = entry.Key;
                        } //end if
                    } //end foreach

                    atkChoices.Add(bestChoice);
                } //end if

                //otherwise, nobody is being focused (eg this formation is entirely pedes) so pick purely randomly
                else
                {

                } //end else
            } //end if
        } //end for
    } //end setTarget
} //end enemyBattleAI