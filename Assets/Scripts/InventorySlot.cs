using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class InventorySlot : MonoBehaviour, IDropHandler {
	//slotId is the number that each slot is identified as
	public int slotId;
	private Inventory inv;


	void Start()
	{
		inv = GameObject.Find ("Inventory").GetComponent<Inventory> ();
	}


	public void OnDrop(PointerEventData eventData)
	{
		//ItemData of held Item
		ItemData heldItem = eventData.pointerDrag.GetComponent<ItemData> ();


		if (inv.items [slotId].ID <= 9) {
			//If the item is dropped in an empty slot, then:
			if (inv.items [slotId].ID == -1) {
				inv.items [heldItem.slotNumber] = new Item ();
				inv.items [slotId] = heldItem.item;
				heldItem.slotNumber = slotId;
			}
			//If the item is dropped in a slot that is not its own, then:
			else if (heldItem.slotNumber != slotId) {
				//        slotItem is the item occupying the slot that you tried to drop your item in
				Transform slotItem = this.transform.GetChild (0);
				slotItem.GetComponent<ItemData> ().slotNumber = heldItem.slotNumber;
				slotItem.transform.SetParent (inv.invSlots [heldItem.slotNumber].transform);
				slotItem.transform.position = inv.invSlots [heldItem.slotNumber].transform.position;

				heldItem.slotNumber = slotId;
				heldItem.transform.SetParent (this.transform);
				heldItem.transform.position = this.transform.position;

				inv.items [heldItem.slotNumber] = slotItem.GetComponent<ItemData> ().item;
				inv.items [slotId] = heldItem.item;
			}
		}
		else if (inv.items [slotId].ID >= 10) {
			//If the item is dropped in an empty slot, then:
			if (inv.items [slotId].ID == -1) {
				inv.items [heldItem.slotNumber] = new Item ();
				inv.items [slotId] = heldItem.item;
				heldItem.slotNumber = slotId;
			}
			//If the item is dropped in a slot that is not its own, then:
			else if (heldItem.slotNumber != slotId) {
				//        slotItem is the item occupying the slot that you tried to drop your item in
				Transform slotItem = this.transform.GetChild (0);
				slotItem.GetComponent<ItemData> ().slotNumber = heldItem.slotNumber;
				slotItem.transform.SetParent (inv.itemSlots [heldItem.slotNumber].transform);
				slotItem.transform.position = inv.itemSlots [heldItem.slotNumber].transform.position;

				heldItem.slotNumber = slotId;
				heldItem.transform.SetParent (this.transform);
				heldItem.transform.position = this.transform.position;

				inv.items [heldItem.slotNumber] = slotItem.GetComponent<ItemData> ().item;
				inv.items [slotId] = heldItem.item;
			}
		}
	}
}
