using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class killMe : MonoBehaviour {

	public float timeToKill = 0.0f;

	// Use this for initialization
	void Start () {
		
		Destroy (gameObject, timeToKill);

	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
