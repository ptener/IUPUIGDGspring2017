using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Tooltip : MonoBehaviour {
	private Item item;
	private string data;
	GameObject tooltip;

	void Start()
	{
		tooltip = GameObject.Find ("Tooltip");
		tooltip.SetActive (false);
	}

	void Update()
	{
		if (tooltip.activeSelf) {
			tooltip.transform.position = Input.mousePosition;
		}
	}

	public void Activate(Item item)
	{
		this.item = item;
		ConstructDataString ();
		tooltip.SetActive (true);
	}

	public void Deactivate()
	{
		tooltip.SetActive (false);
	}

	public void ConstructDataString()
	{
		data = "<color=#00FF00><b>" + item.Title + "</b></color>\n" + item.Description + "\n\nDamage: "+ item.Damage +
			"\nDelay: "+ item.Delay;
		tooltip.transform.GetChild (0).GetComponent<Text>().text = data;
	}

}