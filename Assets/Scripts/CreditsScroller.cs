using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CreditsScroller : MonoBehaviour {

    public float scrollSpeed = 0.1f;
    public float scrollMaximumHeight = 100;

    bool scrolling = true;

    public Transform scrollTextTransform;
    public GameObject returntoMenuButton;
	
	// Update is called once per frame
	void Update () {
		if (scrolling) {
            if (scrollTextTransform != null) {
                scrollTextTransform.position = new Vector3(scrollTextTransform.position.x, scrollTextTransform.position.y+scrollSpeed*Time.deltaTime, scrollTextTransform.position.z);// scrollSpeed;
                if (scrollTextTransform.position.y >= scrollMaximumHeight) {
                    //Finisehd scrolling
                    returntoMenuButton.SetActive(true);
                    scrollTextTransform.gameObject.SetActive(false);
                    scrolling = false;
                }
            } else {
                scrolling = false;//No object set for scrolling
            }
        }
	}

    public void BeginScroll() {

    }

    public void FungusIsSlightlyBroken() {
        //Delete any gameobject tree with the savemenu script on it in the scene (this is to prevent the restarting from act0 of the game.)
        Fungus.SaveMenu[] objs = FindObjectsOfType<Fungus.SaveMenu>();
        for (int i = 0; i < objs.Length; i++) {
            Destroy(objs[i]);
        }
    }
}
