using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class BeginPlay : MonoBehaviour {

    public void StartGame() {
        SceneManager.LoadScene("VisualNovelBrian");
    }

    public void ViewGalery()
    {
        SceneManager.LoadScene("3DModels");
    }

    public void MainMenu()
    {
        SceneManager.LoadScene("Title");
    }
}
