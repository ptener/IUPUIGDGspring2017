using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InventoryMovement : MonoBehaviour {

	// Use this for initialization
	void Start () {
		GetComponent<RectTransform>().localPosition = this.transform.position;

		Vector3 hidden = new Vector3 (0, -262, 0);
		transform.Translate (hidden, Space.Self);
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKeyDown(KeyCode.I))
		{
			Vector3 shown = new Vector3 (0, 262, 0);
			transform.Translate (shown, Space.Self);
		}

	}
}
