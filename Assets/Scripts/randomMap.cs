using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class randomMap : MonoBehaviour 
{
	
	private GameObject[] nodes;
	public int sizeofMap = 5;
	public int lengthofCorridors = 5;
	public int cornerPiece = 0;
	public LayerMask wall;
	public GameObject cube;
	// Use this for initialization
	void Start () {

		cube = GameObject.FindGameObjectWithTag ("test");
		Transform straightHallway = transform.GetChild (0);
		Transform leftHallway = transform.GetChild (1);
		Transform Corner1 = transform.GetChild (2);
		Transform Corner2 = transform.GetChild (3);
		Transform Corner3 = transform.GetChild (4);
		Transform Corner4 = transform.GetChild (5);
		Vector3 vectordirection = transform.TransformDirection(new Vector3(1,0,0));
		Transform[] currentHallway = { straightHallway, leftHallway, Corner1, Corner2 , Corner3, Corner4};
		string direction = "vert+";
		string lastdirection;
		int hallwayIndex = 0;
		Vector3 sizeofCurrentPlane = straightHallway.transform.GetChild (0).transform.GetChild (0).GetComponent<Renderer> ().bounds.size;
	
		Transform temp = transform;
		Ray wallRay = new Ray (this.transform.GetChild (0).transform.position, Vector3.forward);

		int randomSize = Random.Range (3, lengthofCorridors);
		int randomChoice;

		//init transform so they are not empty, but we don't use our own transform for these vars.
		Transform platform = transform;
		Transform platformNode = transform;

		for (int i = 0; i < 100; i++) {
			for (int j = 0; j < randomSize - 1; j++) {
				if (j == 0 && i == 0)
					platform = currentHallway [hallwayIndex];
				else
					platform = transform.GetChild (transform.childCount - 1);


				if (Physics.Raycast (platform.position, vectordirection, 10, wall)) 
				{
					if(vectordirection.x == 1){
						Instantiate (cube, new Vector3 (platform.position.x+10, platform.position.y, platform.position.z), Quaternion.identity);
					} else {
						Instantiate (cube, new Vector3 (platform.position.x, platform.position.y, platform.position.z+10), 	Quaternion.identity);
					}

					Debug.Log("There is something in front of the object!");
				}

				
				platformNode = platform.transform.GetChild (1);
				sizeofCurrentPlane = platform.transform.GetChild (0).transform.GetChild (0).GetComponent<Renderer> ().bounds.size;

				if (direction == "vert+")
					temp = Instantiate (currentHallway [hallwayIndex], new Vector3 (platform.position.x + sizeofCurrentPlane.x, platform.position.y, platform.position.z), Quaternion.identity);
				else if (direction == "vert-")
					temp = Instantiate (currentHallway [hallwayIndex], new Vector3 (platform.position.x - sizeofCurrentPlane.x, platform.position.y, platform.position.z), Quaternion.identity);
				else if (direction == "hort-")
					temp = Instantiate (currentHallway [hallwayIndex], new Vector3 (platform.position.x, platform.position.y, platform.position.z + sizeofCurrentPlane.z), Quaternion.identity);
				else if (direction == "hort+")
					temp = Instantiate (currentHallway [hallwayIndex], new Vector3 (platform.position.x, platform.position.y, platform.position.z - sizeofCurrentPlane.z), Quaternion.identity);
				temp.transform.SetParent (this.transform);
			}

			randomChoice = Random.Range (0, 3);
			Debug.Log (randomChoice);

		
			lastdirection = direction;

			if (direction.Contains ("hort") && randomChoice == 0) {
				
				hallwayIndex = 0;

				if (direction.Contains ("hort+")) {
					cornerPiece = 5;
				} else {
					cornerPiece = 4;
				}

				direction = "vert+";
				vectordirection = new Vector3 (1, 0, 0);
		
			} 
			else if (direction.Contains ("hort") && randomChoice == 1) 
			{
				
				hallwayIndex = 0;

				if (direction.Contains ("hort+")) {
					cornerPiece = 3;
				} else {
					cornerPiece = 2;
				}

				direction = "vert-";
				vectordirection = new Vector3 (1, 0, 0);
			} 
			else if (direction.Contains ("hort") && randomChoice == 2)
			{
				cornerPiece = 1;
			} 
			else if (direction.Contains ("vert") && randomChoice == 0) {
				
				hallwayIndex = 1;

				if (direction.Contains ("vert+"))
				{
					cornerPiece = 2;
				}
				else 
				{
					cornerPiece = 4;
				}

				direction = "hort+";
				vectordirection = new Vector3 (0, 0, 1);
		
			} else if (direction.Contains ("vert") && randomChoice == 1) {
				
				hallwayIndex = 1;
		

				if (direction.Contains ("vert+"))
				{
					cornerPiece = 3;
				}
				else 
				{
					cornerPiece = 5;
				}

				direction = "hort-";
				vectordirection = new Vector3 (0, 0, 1);
			} 
			else if (direction.Contains ("vert") && randomChoice == 2)
			{
				//do nothing, keep going in same direction
				cornerPiece = 0;
			}


			//add the last piece of tile here
			platform = transform.GetChild (transform.childCount - 1);

		

			platformNode = platform.transform.GetChild (1);
			sizeofCurrentPlane = platform.transform.GetChild (0).transform.GetChild (0).GetComponent<Renderer> ().bounds.size;

			if (lastdirection == "vert+")
				temp = Instantiate (currentHallway [cornerPiece], new Vector3 (platform.position.x + sizeofCurrentPlane.x, platform.position.y, platform.position.z), Quaternion.identity);
			else if (lastdirection == "vert-")
				temp = Instantiate (currentHallway [cornerPiece], new Vector3 (platform.position.x - sizeofCurrentPlane.x, platform.position.y, platform.position.z), Quaternion.identity);
			else if (lastdirection == "hort-")
				temp = Instantiate (currentHallway [cornerPiece], new Vector3 (platform.position.x, platform.position.y, platform.position.z + sizeofCurrentPlane.z), Quaternion.identity);
			else if (lastdirection == "hort+")
				temp = Instantiate (currentHallway [cornerPiece], new Vector3 (platform.position.x, platform.position.y, platform.position.z - sizeofCurrentPlane.z), Quaternion.identity);

			temp.transform.SetParent (this.transform);
		}
	}
	
	// Update is called once per frame
	void Update ()
	{

	}
}
