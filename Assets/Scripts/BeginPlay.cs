using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class BeginPlay : MonoBehaviour {

    public GameObject[] toggleableButtons;

    public void StartGame() {
        SceneManager.LoadScene("Act0");
    }

    public void NewGame() {
        SceneManager.LoadScene("NewGame");
    }

    public void ViewGalery()
    {
        SceneManager.LoadScene("3DModels");
    }

    public void MainMenu()
    {
        SceneManager.LoadScene("Title");
    }

    public void ToggleButtons() {
        foreach (GameObject b in toggleableButtons) {
            b.SetActive(!b.activeSelf);
        }
    }

    public void ExitGame() {
        Application.Quit();
    }
}
