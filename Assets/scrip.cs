using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class scrip : MonoBehaviour {

	public GameObject nodeUser;
	public Transform[] nodes;
	public Transform currentNode;
	public double speed;
	// Use this for initialization
	void Start () {
		nodes = new Transform[transform.childCount];
		int i = 0;

		foreach (Transform t in transform) {
			nodes [i++] = t;
		}

		currentNode = nodes [0];
	}
	
	// Update is called once per frame
	void Update () {
		moveTowards (currentNode);

	}

	void moveTowards(Transform currentNode)
	{
		float tempx, tempy, tempz;
		tempx = currentNode.transform.position.x - this.transform.position.x;
		tempy = currentNode.transform.position.y - this.transform.position.y;
		tempz = currentNode.transform.position.x - this.transform.position.z;

		if (tempx != 0) {
			this.;
			this.transform.position.x + speed;
		}
		if (tempy != 0) {
			this.transform.position.y + speed;
		}
		if (tempz != 0) {
			this.transform.position.z + speed;
		}
	}
}
