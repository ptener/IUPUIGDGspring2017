using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class loadNextMap : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {


	}
	void OnCollisionEnter(Collision collision)
	{
		SceneManager.LoadScene(SceneManager.GetActiveScene().ToString());
	}
}
