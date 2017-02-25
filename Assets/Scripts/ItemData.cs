using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ItemData : MonoBehaviour {
	public Item item;
	public int amount;

	//default constructor
	//called when itemData is created
	public ItemData()
	{
		amount = 1;
	}
}
