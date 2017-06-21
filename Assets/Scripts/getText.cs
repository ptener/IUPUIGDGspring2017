using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class getText : MonoBehaviour {

	Text test;
	randomMap randomM;

	// Use this for initialization
	void Start () {
		test = GetComponent<Text> ();
		GameObject rMap = GameObject.Find ("Map");
		randomMap temp = rMap.GetComponent<randomMap> ();
		randomM = temp;
	}
	
	// Update is called once per frame
	void Update () {
		test.text = randomM.map2dOutput;
	}
}
