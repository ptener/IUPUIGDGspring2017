using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class InventorySlot : MonoBehaviour, IDropHandler {
	public int id;
	private Inventory inv;


	void Start()
	{
		inv = GameObject.Find ("Inventory").GetComponent<Inventory> ();
	}


	public void OnDrop(PointerEventData eventData)
	{
		ItemData droppedItem = eventData.pointerDrag.GetComponent<ItemData> ();
		if (inv.items [id].ID == -1) {
			inv.items [droppedItem.slotNumber] = new Item ();
			inv.items [id] = droppedItem.item;
			droppedItem.slotNumber = id;
		}
		else if (droppedItem.slotNumber !=id) {
			Transform item = this.transform.GetChild (0);
			item.GetComponent<ItemData> ().slotNumber = droppedItem.slotNumber;
			item.transform.SetParent (inv.slots[droppedItem.slotNumber].transform);
			item.transform.position = inv.slots [droppedItem.slotNumber].transform.position;

			droppedItem.slotNumber = id;
			droppedItem.transform.SetParent (this.transform);
			droppedItem.transform.position = this.transform.position;

			inv.items [droppedItem.slotNumber] = item.GetComponent<ItemData> ().item;
			inv.items [id] = droppedItem.item;
		}

	}
}
