using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class gameManager : MonoBehaviour {

	public GameObject mainMenu;

	public float escPressRate = 0.25f;
	private float escLastPressed = 0.0f;

	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKey (KeyCode.Escape)) {
			if (!mainMenu.activeInHierarchy) {
				if (Time.time > escLastPressed) {
					escLastPressed = Time.time + escPressRate;
					mainMenu.SetActive (true);
				}
			} else {
				if (Time.time > escLastPressed) {
					escLastPressed = Time.time + escPressRate;
					mainMenu.SetActive (false);
				}
			}
		}
	}
}
