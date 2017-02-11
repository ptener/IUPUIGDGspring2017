using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class playerHealth : MonoBehaviour {

	public Slider healthBar;
	public float playerMaxHealth = 5.0f;
	public float testDamage = 1.0f;
	public GameObject deathEffect1;
	public GameObject deathEffect2;

	private float playerCurrentHealth;
	private float healthChangeDelay = 0.15f;
	private float healthLastChanged = 0.0f;

	// Use this for initialization
	void Awake () {

		playerCurrentHealth = playerMaxHealth;
		healthBar.value = playerCurrentHealth;

	}

	void OnMouseDown() {

		if (Time.time > healthLastChanged) {
			healthLastChanged = Time.time + healthChangeDelay;
			playerCurrentHealth -= testDamage;
			healthBar.value = playerCurrentHealth;
			Debug.Log ("Damage dealt: " + testDamage + ". Health remaining: " + playerCurrentHealth);
		} 

	}

	void FixedUpdate() {

		if (playerCurrentHealth <= 0) {
			Instantiate (deathEffect1, transform.position, transform.rotation);
			Instantiate (deathEffect2, transform.position, transform.rotation);
			this.transform.parent.gameObject.SetActive (false);
		}

	}

}
