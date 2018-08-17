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
                    scrolling = false;
                }
            } else {
                scrolling = false;//No object set for scrolling
            }
        }
	}

    public void BeginScroll() {

    }
}
