using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyManager : MonoBehaviour
{
    private int spriteSize; //used to spawn each sprite in the correct location proportional to how many there are and the size of the sprite

    public string[] enemyNames;

    public GameObject enemyPrefab;
    public GameObject enemy;
    public Unit enemyUnit;

    public Transform[] spawnPoints; //holds locations of where to spawn the enemies

    private Sprite sprite;
    private Transform spawnLoc;
	// Use this for initialization
	void Start ()
    {
        Debug.Log("0th element of enemyNames: " + enemyNames[0]);
        enemyPrefab = (GameObject)Resources.Load("prefabs/enemy1");
        enemyUnit = GetComponent<Unit>();
        sprite = (Sprite)Resources.Load("Assets/sprites/enemy1"); //load the test sprite in
        Spawn();
	} //end Start
	
	// Update is called once per frame
	void Update ()
    {
		
	} //end Update

    private void Spawn()
    {
        float prevLoc = 0;

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

            enemy = (GameObject)Instantiate(enemyPrefab, location, transform.rotation);
            enemy.gameObject.tag = "Enemy";
            enemyUnit = enemy.GetComponent<Unit>();
            enemyUnit.Name = enemyNames[i];
            enemyUnit.weaponNames = weaponFill(enemyUnit.Name); //set the weapons of the unit based on the enemy's name
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
} //end EnemyManager
