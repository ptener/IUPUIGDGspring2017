using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class EditTextBox : MonoBehaviour {

	private Text textInstance;
	private Image rightChar;
	private Image leftChar;
	public Sprite charOne;
	public Sprite charTwo;
	public Sprite charThree;
	public Sprite charFour;

	public string text{
		set{
			textInstance.text = value;
		}
	}

	void Awake (){
		textInstance = GetComponentInChildren<Text>();
	}

	void Start(){
		rightChar = GameObject.Find ("RightCharacter").GetComponent<Image> ();
		leftChar = GameObject.Find ("LeftCharacter").GetComponent<Image> ();

	}

	void Update(){
		if (Input.GetKeyDown(KeyCode.Return)) {
		text = "I have changed the message!!!";
		ChangeLeftCharacter (2);
		ChangeRightCharacter (3);
		}
	}


	//Can change the character sprite based on a predetermined list of sprites
	void ChangeRightCharacter(int character){
		if (character == 1) {
			rightChar.sprite = charOne;
		}
		else if (character == 2) {
			rightChar.sprite = charTwo;
		}
		else if (character == 3) {
			rightChar.sprite = charThree;

		}
		else if (character == 4) {
			rightChar.sprite = charFour;
		}
	}

	void ChangeLeftCharacter(int character){
		if (character == 1) {
			leftChar.sprite = charOne;
		}
		else if (character == 2) {
			leftChar.sprite = charTwo;
		}
		else if (character == 3) {
			leftChar.sprite = charThree;

		}
		else if (character == 4) {
			leftChar.sprite = charFour;
		}
	}
}
