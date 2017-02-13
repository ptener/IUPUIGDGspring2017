using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Path : MonoBehaviour {

	public GameObject nodeUser;
	public Transform[] nodes;
	private int currentNode;
	public float reachDistance = 1.0f;
	public float speed;

	// Use this for initialization
	void Start () {
		Debug.Log (transform.childCount);
		//nodes = this.GetComponentsInChildren<Transform>();

		currentNode = 0;
	}
	
	// Update is called once per frame
	void Update () {
		Vector3 dir = nodes [currentNode].position - nodeUser.transform.position;

		nodeUser.transform.position += dir * Time.deltaTime * speed;
		if (dir.magnitude <= reachDistance) {
			currentNode++;
		}

		if (currentNode == 4) {
			currentNode = 0;
		}

		//moveTowards (currentNode);

	}

	void moveTowards(Transform currentNode)
	{
		float tempx, tempy, tempz;
		tempx = nodeUser.transform.position.x - currentNode.transform.position.x; 
		tempy = nodeUser.transform.position.y - currentNode.transform.position.y;
		tempz = nodeUser.transform.position.z - currentNode.transform.position.z;

		if (tempx > 0) {
			Debug.Log (nodeUser.transform.position.x);
			nodeUser.transform.position = new Vector3(nodeUser.transform.position.x + speed, nodeUser.transform.position.y, nodeUser.transform.position.z);
		}
		if (tempy > 0) {
			nodeUser.transform.position = new Vector3(nodeUser.transform.position.x, nodeUser.transform.position.y + speed, nodeUser.transform.position.z);
		}
		if (tempz > 0) {
			nodeUser.transform.position = new Vector3(nodeUser.transform.position.x, nodeUser.transform.position.y, nodeUser.transform.position.z + speed);
		}
	}
}
