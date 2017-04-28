using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class randomMap : MonoBehaviour 
{
	public int numberofRooms = 5;
	public int lengthofCorridors = 5;
	public int numberofCorners = 5;
	public int cornerPiece = 0;

	public Transform player;
	public Transform ladder;
	public Transform[] Rooms;
	string direction = "vert+";
	string lastdirection;
	int hallwayIndex = 0;
	int tempHallwayIndex = 0;
	int randomSize;
	int randomChoice;
	List<string> usedRoomDirections = new List<string> ();
	List<roomScript> rooms = new List<roomScript>();
	List<string> mapIndex = new List<string>();
	int roomNodeOffsets = 0;
	int totalRoomNodeOffsets = 0;
	Transform platform;
	Vector3 sizeofCurrentPlane;
	Transform Room1;
	Transform temp;


	// Use this for initialization
	void Start () {

		Transform straightHallway = transform.GetChild (0);
		Transform leftHallway = transform.GetChild (1);
		Transform Corner1 = transform.GetChild (2);
		Transform Corner2 = transform.GetChild (3);
		Transform Corner3 = transform.GetChild (4);
		Transform Corner4 = transform.GetChild (5);
		Transform end = transform.GetChild (6);
		List<Transform> roomsDone = new List<Transform>();
		Room1 = transform.GetChild(7);
	
		//init inital room
		rooms.Add(new roomScript());

		//init rooms
		for (int i=0; i < numberofRooms-1; i++)
			rooms.Add (new roomScript());
		randomSize = Random.Range (10, lengthofCorridors);
		Transform[] currentHallway = { straightHallway, leftHallway, Corner1, Corner2 , Corner3, Corner4, end};

		sizeofCurrentPlane = straightHallway.GetComponent<Renderer> ().bounds.size;

		temp = transform;

		//init transform so they are not empty, but we don't use our own transform for these vars.
		platform = transform;
		string lastPathDirection = "";

		//fill out mapIndex
		for (int i = 0; i < transform.childCount; i++)
			mapIndex.Add(transform.GetChild(i).ToString());

		for (int i = 0; i < numberofRooms; i++) {
			usedRoomDirections.Clear ();
			Debug.Log("Room number: " + i + " " + roomNodeOffsets);
			totalRoomNodeOffsets += roomNodeOffsets;
			roomNodeOffsets = 0;

			//Debug.Log("number of Paths: " + rooms[i].numOfPaths);
			int dividedCorner = numberofCorners / 2;

			//number of paths
			for (int l = 0; l < 4; l++) {
				
				//get last path Direction if not in first room
				if (i > 1) {
					if (direction == "hort+")
						lastPathDirection = "hort-";
					else if (direction == "vert+")
						lastPathDirection = "vert-";
					else if (direction == "vert-")
						lastPathDirection = "vert+";
					else if (direction == "hort-")
						lastPathDirection = "hort+";
				}
				
				//for each path get a direction that hasn't been used yet
				while (usedRoomDirections.Contains (direction)){ //|| direction == lastPathDirection) {
					Debug.Log(usedRoomDirections[0]);
					getDirection ();
					Debug.Log("Direction it picked " + direction);
					if (usedRoomDirections.Count >= 4) {
						for (int d =0; d < usedRoomDirections.Count; d++){
							Debug.Log ("inside Directions: " + usedRoomDirections[d]);
						}
						break;
					}
				}
				//number of corners
				for (int k = 0; k < 2; k++) {
					randomSize = Random.Range (4, lengthofCorridors);
					for (int j = 0; j < randomSize - 1; j++) {
						
						if (j == 0 && i == 0 && k == 0)
							platform = Room1;
						else if (j == 0 && k == 0) {
							if (mapIndex.LastIndexOf("Room") == -1)
								platform = transform.GetChild(mapIndex.LastIndexOf("Plane (UnityEngine.Transform)") );//GetChild (transform.childCount - 1 - totalRoomNodeOffsets);
							else
								platform = transform.GetChild(mapIndex.LastIndexOf("Room") );//GetChild (transform.childCount - 1 - totalRoomNodeOffsets);

							Debug.Log("how: " + roomNodeOffsets);
						}
						else{
							platform = transform.GetChild (transform.childCount - 1);

						}
						addPanel (currentHallway);
					}
					getDirection();

					if (k != 1) {
						addEnd (currentHallway);
						Debug.Log ("Tell me where they are!!!!");
					}
					else
						addCorner(currentHallway);
				}

				//add case for first room
				if (i < 1)
					usedRoomDirections.Add ("vert+");
				else if (!usedRoomDirections.Contains (direction)) {
					Debug.Log ("item added: " + direction);
					usedRoomDirections.Add (direction);
				}

			}
			addRoom(roomsDone);

		}

		//go through and pick a start room and a final room

			int randomStart = Random.Range (1, roomsDone.Count);
			int randomGoal = Random.Range(1, roomsDone.Count);

			//if they are equal reset
			//while (randomStart == randomGoal)
			//	randomStart = Random.Range (1, roomsDone.Count);

			player.position = roomsDone[randomStart].transform.position;
			Instantiate (ladder, new Vector3 (roomsDone[randomGoal].position.x, roomsDone[randomGoal].position.y, roomsDone[randomGoal].position.z), Quaternion.identity);

	}

	// Update is called once per frame
	void Update ()
	{

	}

	void addEnd(Transform[] currentHallway)
	{
		tempHallwayIndex = cornerPiece;
		cornerPiece = 6;
		//add the last piece of tile here
		platform = transform.GetChild (transform.childCount - 1);
		sizeofCurrentPlane = platform.GetComponent<Renderer> ().bounds.size;

		if (lastdirection == "vert+")
			temp = Instantiate (currentHallway [cornerPiece], new Vector3 (platform.position.x + sizeofCurrentPlane.x, platform.position.y, platform.position.z), Quaternion.identity);
		else if (lastdirection == "vert-")
			temp = Instantiate (currentHallway [cornerPiece], new Vector3 (platform.position.x - sizeofCurrentPlane.x, platform.position.y, platform.position.z), Quaternion.identity);
		else if (lastdirection == "hort-")
			temp = Instantiate (currentHallway [cornerPiece], new Vector3 (platform.position.x, platform.position.y, platform.position.z + sizeofCurrentPlane.z), currentHallway [cornerPiece].localRotation);
		else if (lastdirection == "hort+")
			temp = Instantiate (currentHallway [cornerPiece], new Vector3 (platform.position.x, platform.position.y, platform.position.z - sizeofCurrentPlane.z), currentHallway [cornerPiece].localRotation);

		temp.transform.SetParent (this.transform);
		mapIndex.Add(temp.ToString());
		roomNodeOffsets++;

		cornerPiece = tempHallwayIndex;
	}

	void addPanel(Transform[] currentHallway){

		sizeofCurrentPlane = platform.transform.GetComponent<Renderer> ().bounds.size;

		//if sizeofCurrentPlane is a room half it
		if (sizeofCurrentPlane.x > 10) {

			sizeofCurrentPlane = sizeofCurrentPlane / 2f;
			if (direction == "vert+")
				temp = Instantiate (currentHallway [hallwayIndex], new Vector3 (platform.position.x + sizeofCurrentPlane.x + 5f, platform.position.y, platform.position.z), Quaternion.identity);
			else if (direction == "vert-")
				temp = Instantiate (currentHallway [hallwayIndex], new Vector3 (platform.position.x - sizeofCurrentPlane.x - 5f, platform.position.y, platform.position.z), Quaternion.identity);
			else if (direction == "hort-")
				temp = Instantiate (currentHallway [hallwayIndex], new Vector3 (platform.position.x, platform.position.y, platform.position.z + sizeofCurrentPlane.z + 5f), currentHallway [hallwayIndex].localRotation);
			else if (direction == "hort+")
				temp = Instantiate (currentHallway [hallwayIndex], new Vector3 (platform.position.x, platform.position.y, platform.position.z - sizeofCurrentPlane.z - 5f), currentHallway [hallwayIndex].localRotation);
			temp.transform.SetParent (this.transform);
			mapIndex.Add(temp.ToString());

		} else {
			if (direction == "vert+")
				temp = Instantiate (currentHallway [hallwayIndex], new Vector3 (platform.position.x + sizeofCurrentPlane.x, platform.position.y, platform.position.z), Quaternion.identity);
			else if (direction == "vert-")
				temp = Instantiate (currentHallway [hallwayIndex], new Vector3 (platform.position.x - sizeofCurrentPlane.x, platform.position.y, platform.position.z), Quaternion.identity);
			else if (direction == "hort-")
				temp = Instantiate (currentHallway [hallwayIndex], new Vector3 (platform.position.x, platform.position.y, platform.position.z + sizeofCurrentPlane.z), currentHallway [hallwayIndex].localRotation);
			else if (direction == "hort+")
				temp = Instantiate (currentHallway [hallwayIndex], new Vector3 (platform.position.x, platform.position.y, platform.position.z - sizeofCurrentPlane.z), currentHallway [hallwayIndex].localRotation);
			temp.transform.SetParent (this.transform);
			mapIndex.Add(temp.ToString());
		}
		roomNodeOffsets++;
	}

	void getDirection(){

		randomChoice = Random.Range (0, 3);

		lastdirection = direction;

		if (direction.Contains ("hort") && randomChoice == 0) {

			hallwayIndex = 0;

			if (direction.Contains ("hort+")) {
				cornerPiece = 5;
			} else {
				cornerPiece = 4;
			}

			direction = "vert+";

		} else if (direction.Contains ("hort") && randomChoice == 1) {

			hallwayIndex = 0;

			if (direction.Contains ("hort+")) {
				cornerPiece = 3;
			} else {
				cornerPiece = 2;
			}

			direction = "vert-";
		} else if (direction.Contains ("hort") && randomChoice == 2) {
			cornerPiece = 1;
		} else if (direction.Contains ("vert") && randomChoice == 0) {

			hallwayIndex = 1;

			if (direction.Contains ("vert+")) {
				cornerPiece = 2;
			} else {
				cornerPiece = 4;
			}

			direction = "hort+";

		} else if (direction.Contains ("vert") && randomChoice == 1) {

			hallwayIndex = 1;


			if (direction.Contains ("vert+")) {
				cornerPiece = 3;
			} else {
				cornerPiece = 5;
			}

			direction = "hort-";
		} else if (direction.Contains ("vert") && randomChoice == 2) {
			//do nothing, keep going in same direction
			cornerPiece = 0;
		}


	}

	void addCorner(Transform[] currentHallway){

		//add the last piece of tile here
		platform = transform.GetChild (transform.childCount - 1);

		sizeofCurrentPlane = platform.GetComponent<Renderer> ().bounds.size;

		if (lastdirection == "vert+")
			temp = Instantiate (currentHallway [cornerPiece], new Vector3 (platform.position.x + sizeofCurrentPlane.x, platform.position.y, platform.position.z), Quaternion.identity);
		else if (lastdirection == "vert-")
			temp = Instantiate (currentHallway [cornerPiece], new Vector3 (platform.position.x - sizeofCurrentPlane.x, platform.position.y, platform.position.z), Quaternion.identity);
		else if (lastdirection == "hort-")
			temp = Instantiate (currentHallway [cornerPiece], new Vector3 (platform.position.x, platform.position.y, platform.position.z + sizeofCurrentPlane.z), currentHallway [cornerPiece].localRotation);
		else if (lastdirection == "hort+")
			temp = Instantiate (currentHallway [cornerPiece], new Vector3 (platform.position.x, platform.position.y, platform.position.z - sizeofCurrentPlane.z), currentHallway [cornerPiece].localRotation);

		temp.transform.SetParent (this.transform);
		mapIndex.Add(temp.ToString());

		//for (int m = 0; m < usedRoomDirections.Count; m++)
			//Debug.Log("used room direction: " + usedRoomDirections[m]);
	}

	void addRoom(List<Transform> roomsDone){
		//for (int l =0; l < usedRoomDirections.Count; l++)
			//Debug.Log("the used room directions before being cleared " + usedRoomDirections[l]);
		//usedRoomDirections.Clear ();
		platform = transform.GetChild (transform.childCount - 1);

		sizeofCurrentPlane = Room1.GetComponent<Renderer> ().bounds.size;

		sizeofCurrentPlane = (new Vector3 (sizeofCurrentPlane.x + platform.GetComponent<Renderer> ().bounds.size.x / 2f + 5f, sizeofCurrentPlane.y, sizeofCurrentPlane.z + platform.GetComponent<Renderer> ().bounds.size.z / 2f + 5f));

		//pick a random room from Rooms[]
		int randomRoomIndex = Random.Range (0, Rooms.Length);
		Debug.Log(randomRoomIndex);
		Debug.Log(Rooms[randomRoomIndex]);
		if (direction == "vert+")
			temp = Instantiate (Rooms[randomRoomIndex], new Vector3 (platform.position.x + sizeofCurrentPlane.x / 2f, platform.position.y, platform.position.z), Quaternion.identity);
		else if (direction == "vert-")
			temp = Instantiate (Rooms[randomRoomIndex], new Vector3 (platform.position.x - sizeofCurrentPlane.x / 2f, platform.position.y, platform.position.z), Quaternion.identity);
		else if (direction == "hort-")
			temp = Instantiate (Rooms[randomRoomIndex], new Vector3 (platform.position.x, platform.position.y, platform.position.z + sizeofCurrentPlane.z / 2f), Quaternion.identity);
		else if (direction == "hort+")
			temp = Instantiate (Rooms[randomRoomIndex], new Vector3 (platform.position.x, platform.position.y, platform.position.z - sizeofCurrentPlane.z / 2f), Quaternion.identity);

		roomsDone.Add(temp);
		temp.transform.SetParent (this.transform);
		mapIndex.Add("Room");

		getDirection();
	}
}
