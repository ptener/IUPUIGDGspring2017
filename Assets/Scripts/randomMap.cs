using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class randomMap : MonoBehaviour {
	private GameObject[] nodes;
	public int sizeofMap = 5;
	public int lengthofCorridors = 5;
	// Use this for initialization
	void Start () {
		Transform straightHallway = transform.GetChild(0);
		Transform leftHallway = transform.GetChild(1);
		Transform rightHallway = transform.GetChild(2);
		Transform[] currentHallway = {straightHallway, leftHallway, rightHallway};
		int hallwayIndex = 0;

		Transform corner = transform.GetChild(3);
		Transform temp;
		Transform temp2;

		int randomSize = Random.Range (1, lengthofCorridors);
		Debug.Log (randomSize);

		//init transform so they are not empty, but we don't use our own transform for these vars.
		Transform platform = transform;
		Transform platformNode = transform;

		for (int i=0; i < sizeofMap; i++){
			for (int j=0; j < randomSize; j++) {
				platform = transform.GetChild (transform.childCount - 1);
				platformNode = platform.transform.GetChild (0);
				temp = Instantiate(currentHallway[hallwayIndex], new Vector3(platformNode.position.x, platformNode.position.y, platformNode.position.z), Quaternion.identity);
				temp.transform.SetParent (this.transform);
			}
			temp2 = Instantiate (corner, new Vector3 (platformNode.position.x, platformNode.position.y, platformNode.position.z), Quaternion.identity);
			temp2.transform.SetParent (this.transform);
			hallwayIndex = 1;
		}
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
