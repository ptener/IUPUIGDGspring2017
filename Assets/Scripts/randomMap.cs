using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class randomMap : MonoBehaviour {
	private GameObject[] nodes;
	public int sizeofMap = 5;
	public int lengthofCorridors = 5;
	// Use this for initialization
	void Start () {
		Transform temp;
		int randomSize = Random.Range (1, lengthofCorridors);
		Debug.Log (randomSize);
		for (int i=0; i < sizeofMap; i++){
			for (int j=0; j < randomSize; j++) {
				j = sizeofMap * i;
				temp = Instantiate(transform.GetChild(0), new Vector3(transform.GetChild(transform.childCount-1).transform.GetChild(2).position.x,transform.GetChild(transform.childCount-1).transform.GetChild(2).position.y, transform.GetChild(transform.childCount-1).transform.GetChild(2).position.z), Quaternion.identity);
				temp.transform.SetParent (this.transform);
			}
		}
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
