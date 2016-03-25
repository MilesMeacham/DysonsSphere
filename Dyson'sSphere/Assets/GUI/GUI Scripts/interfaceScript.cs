using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class interfaceScript : MonoBehaviour {

	//Pause menu variables
	public static bool isPaused = false;

	//Page variables
	public static bool isAchievementsOpen = false;
	public static bool isOptionsOpen = false;
	public static bool isAboutOpen = false;

	//Popup window/confirmation window variables
	public static bool isNewGameWindowOpen = false;
	public static bool isSaveGameWindowOpen = false;
	public static bool isQuitWindowOpen = false;

	//Iventory variables
	public static bool isInventoryWindowOpen = false;
	public static bool isItemsWindowOpen = false;
	public static bool isWeaponsWindowOpen = false;
	public static bool isArmorWindowOpen = false;

	//Loading Screen Variables
	public GameObject LoadingScene;
	//public Image LoadingBar;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		//keyboard input "P" to open the pause menu
		if (Input.GetKeyDown ("p")) 
		{
			PauseMenu ();
		}

		//test to load death screen
		if (Input.GetKeyDown ("k")) 
		{
			Application.LoadLevel ("DeathScreen");
		}
	}

	//----------------------------- LOADING SCREEN -----------------------------
	public void LoadingScreen ()
	{
		StartCoroutine (LoadLevelCo ());
	}

	IEnumerator LoadLevelCo ()
	{
		LoadingScene.SetActive (true);
		AsyncOperation async = Application.LoadLevelAsync (1);

		while (!async.isDone) 
		{
			//LoadingBar.fillAmount = async.progress / 0.9f;
			yield return null;
		}

	}


	//----------------------------- MAIN MENU -----------------------------
	public void MainMenu ()
	{
		print ("Main Menu");
		Application.LoadLevel ("StartScreen");
	}

	public void StartLevel ()
	{
		print ("Start Level");
		Application.LoadLevel ("TestLevelNoGeneration-Miles");
		LoadingScreen ();
	}

	public void NewGamePopUp ()
	{
		if (isNewGameWindowOpen == false)
		{
			isNewGameWindowOpen = true;
			print ("Are you sure you want to start a new game?");
			print ("A New Game pop up window has been opened.");
			GameObject.Find ("New Game Window").GetComponent<CanvasGroup> ().alpha = 1;
			GameObject.Find ("New Game Window").GetComponent<CanvasGroup> ().interactable = true;
			GameObject.Find ("New Game Window").GetComponent<CanvasGroup> ().blocksRaycasts = true;
		}
		else if (isNewGameWindowOpen == true)
		{
			isNewGameWindowOpen= false;
			print ("New Game pop up window has been closed.");
			GameObject.Find ("New Game Window").GetComponent<CanvasGroup> ().alpha = 0;
			GameObject.Find ("New Game Window").GetComponent<CanvasGroup> ().interactable = false;
			GameObject.Find ("New Game Window").GetComponent<CanvasGroup> ().blocksRaycasts = false;
		}
	}

	public void NewGame ()
	{
		print ("New Game");
		Application.LoadLevel ("OpeningStoryScene");
	}

	//----------------------------- PAGES -----------------------------
	public void AchievementsPage ()
	{
		if (isAchievementsOpen == false) {
			isAchievementsOpen = true;
			print ("Achievements Page has been opened");
			GameObject.Find ("AchievementsPage_Group").GetComponent<CanvasGroup> ().alpha = 1;
			GameObject.Find ("AchievementsPage_Group").GetComponent<CanvasGroup> ().interactable = true;
			GameObject.Find ("AchievementsPage_Group").GetComponent<CanvasGroup> ().blocksRaycasts = true;
		} 
		else if (isAchievementsOpen == true) 
		{
			isAchievementsOpen = false;
			print ("Achievements Page has been closed");
			GameObject.Find ("AchievementsPage_Group").GetComponent<CanvasGroup> ().alpha = 0;
			GameObject.Find ("AchievementsPage_Group").GetComponent<CanvasGroup> ().interactable = false;
			GameObject.Find ("AchievementsPage_Group").GetComponent<CanvasGroup> ().blocksRaycasts = false;
		}
	}

	public void OptionsPage ()
	{
		if (isOptionsOpen == false) 
		{
			isOptionsOpen = true;
			print ("Options Page has been opened");
			GameObject.Find ("OptionsPage_Group").GetComponent<CanvasGroup> ().alpha = 1;
			GameObject.Find ("OptionsPage_Group").GetComponent<CanvasGroup> ().interactable = true;
			GameObject.Find ("OptionsPage_Group").GetComponent<CanvasGroup> ().blocksRaycasts = true;
		}
		else if (isOptionsOpen == true)
		{
			isOptionsOpen = false;
			print ("Options Page has been closed");
			GameObject.Find ("OptionsPage_Group").GetComponent<CanvasGroup> ().alpha = 0;
			GameObject.Find ("OptionsPage_Group").GetComponent<CanvasGroup> ().interactable = false;
			GameObject.Find ("OptionsPage_Group").GetComponent<CanvasGroup> ().blocksRaycasts = false;
		}
	}

	public void AboutPage ()
	{
		if (isAboutOpen == false) 
		{
			isAboutOpen = true;
			print ("About Page has been opened");
			GameObject.Find ("AboutPage_Group").GetComponent<CanvasGroup> ().alpha = 1;
			GameObject.Find ("AboutPage_Group").GetComponent<CanvasGroup> ().interactable = true;
			GameObject.Find ("AboutPage_Group").GetComponent<CanvasGroup> ().blocksRaycasts = true;
		} 
		else if (isAboutOpen == true) 
		{
			isAboutOpen = false;
			print ("About Page has been closed");
			GameObject.Find ("AboutPage_Group").GetComponent<CanvasGroup> ().alpha = 0;
			GameObject.Find ("AboutPage_Group").GetComponent<CanvasGroup> ().interactable = false;
			GameObject.Find ("AboutPage_Group").GetComponent<CanvasGroup> ().blocksRaycasts = false;
		}
	}

	//----------------------------- PAUSE MENU -----------------------------
	public void PauseMenu ()
	{
		print ("Pause Menu");
		if(isPaused == false)
		{
			isPaused = true;
			print ("The user has paused the game.");
			GameObject.Find ("PauseMenu_Group").GetComponent<CanvasGroup> ().alpha = 1;
			GameObject.Find ("PauseMenu_Group").GetComponent<CanvasGroup> ().interactable = true;
			GameObject.Find ("PauseMenu_Group").GetComponent<CanvasGroup> ().blocksRaycasts = true;
			Time.timeScale =0;
		}
		else if(isPaused == true)
		{
			isPaused = false;
			print ("The user has unpaused the game.");
			GameObject.Find ("PauseMenu_Group").GetComponent<CanvasGroup> ().alpha = 0;
			GameObject.Find ("PauseMenu_Group").GetComponent<CanvasGroup> ().interactable = false;
			GameObject.Find ("PauseMenu_Group").GetComponent<CanvasGroup> ().blocksRaycasts = false;
			Time.timeScale =1;
		}
	}

	public void RetryLevel ()
	{
		print ("Retry Level");
	}
	
	public void SaveGameWindow ()
	{
		if (isSaveGameWindowOpen == false)
		{
			isSaveGameWindowOpen = true;
			print ("Save Game Window has been opened.");
			GameObject.Find ("SaveGameWindow_Group").GetComponent<CanvasGroup> ().alpha = 1;
			GameObject.Find ("SaveGameWindow_Group").GetComponent<CanvasGroup> ().interactable = true;
			GameObject.Find ("SaveGameWindow_Group").GetComponent<CanvasGroup> ().blocksRaycasts = true;
		}
		else if (isSaveGameWindowOpen == true)
		{
			isSaveGameWindowOpen = false;
			print ("Save Game Window has been closed.");
			GameObject.Find ("SaveGameWindow_Group").GetComponent<CanvasGroup> ().alpha = 0;
			GameObject.Find ("SaveGameWindow_Group").GetComponent<CanvasGroup> ().interactable = false;
			GameObject.Find ("SaveGameWindow_Group").GetComponent<CanvasGroup> ().blocksRaycasts = false;
		}
	}

	public void SaveGame ()
	{
		print ("The game has been saved");
	}
	
	public void QuitGameWindow ()
	{
		if (isQuitWindowOpen == false) 
		{
			isQuitWindowOpen = true;
			print ("Quit Game Window has been opened");
			GameObject.Find ("QuitWindow_Group").GetComponent<CanvasGroup> ().alpha = 1;
			GameObject.Find ("QuitWindow_Group").GetComponent<CanvasGroup> ().interactable = true;
			GameObject.Find ("QuitWindow_Group").GetComponent<CanvasGroup> ().blocksRaycasts = true;
		}
		else if (isQuitWindowOpen == true) 
		{
			isQuitWindowOpen = false;
			print ("Quit Game Window has been closed");
			GameObject.Find ("QuitWindow_Group").GetComponent<CanvasGroup> ().alpha = 0;
			GameObject.Find ("QuitWindow_Group").GetComponent<CanvasGroup> ().interactable = false;
			GameObject.Find ("QuitWindow_Group").GetComponent<CanvasGroup> ().blocksRaycasts = false;
		}
	}

	//----------------------------- INVENTORY PAGES -----------------------------
	public void InventoryPage ()
	{
		if (isInventoryWindowOpen == false) 
		{
			isInventoryWindowOpen = true;
			print ("Inventory Window has been opened");
			GameObject.Find ("InventoryWindow_Group").GetComponent<CanvasGroup> ().alpha = 1;
			GameObject.Find ("InventoryWindow_Group").GetComponent<CanvasGroup> ().interactable = true;
			GameObject.Find ("InventoryWindow_Group").GetComponent<CanvasGroup> ().blocksRaycasts = true;
		}
		else if (isInventoryWindowOpen == true) 
		{
			isInventoryWindowOpen = false;
			print ("Inventory Window has been closed");
			GameObject.Find ("InventoryWindow_Group").GetComponent<CanvasGroup> ().alpha = 0;
			GameObject.Find ("InventoryWindow_Group").GetComponent<CanvasGroup> ().interactable = false;
			GameObject.Find ("InventoryWindow_Group").GetComponent<CanvasGroup> ().blocksRaycasts = false;
		}
	}

	public void ItemsPage ()
	{
		if (isItemsWindowOpen == false) 
		{
			isItemsWindowOpen = true;
			print ("Items Window has been opened");
			GameObject.Find ("ItemsWindow_Group").GetComponent<CanvasGroup> ().alpha = 1;
			GameObject.Find ("ItemsWindow_Group").GetComponent<CanvasGroup> ().interactable = true;
			GameObject.Find ("ItemsWindow_Group").GetComponent<CanvasGroup> ().blocksRaycasts = true;
		}
		else if (isItemsWindowOpen == true) 
		{
			isItemsWindowOpen = false;
			print ("Items Window has been closed");
			GameObject.Find ("ItemsWindow_Group").GetComponent<CanvasGroup> ().alpha = 0;
			GameObject.Find ("ItemsWindow_Group").GetComponent<CanvasGroup> ().interactable = false;
			GameObject.Find ("ItemsWindow_Group").GetComponent<CanvasGroup> ().blocksRaycasts = false;
		}
	}

	public void WeaponsPage ()
	{
		if (isWeaponsWindowOpen == false) 
		{
			isWeaponsWindowOpen = true;
			print ("Weapons Window has been opened");
			GameObject.Find ("WeaponsWindow_Group").GetComponent<CanvasGroup> ().alpha = 1;
			GameObject.Find ("WeaponsWindow_Group").GetComponent<CanvasGroup> ().interactable = true;
			GameObject.Find ("WeaponsWindow_Group").GetComponent<CanvasGroup> ().blocksRaycasts = true;
		}
		else if (isWeaponsWindowOpen == true) 
		{
			isWeaponsWindowOpen = false;
			print ("Items Window has been closed");
			GameObject.Find ("WeaponsWindow_Group").GetComponent<CanvasGroup> ().alpha = 0;
			GameObject.Find ("WeaponsWindow_Group").GetComponent<CanvasGroup> ().interactable = false;
			GameObject.Find ("WeaponsWindow_Group").GetComponent<CanvasGroup> ().blocksRaycasts = false;
		}
	}

	public void ArmorPage ()
	{
		if (isArmorWindowOpen == false) 
		{
			isArmorWindowOpen = true;
			print ("Armor Window has been opened");
			GameObject.Find ("ArmorWindow_Group").GetComponent<CanvasGroup> ().alpha = 1;
			GameObject.Find ("ArmorWindow_Group").GetComponent<CanvasGroup> ().interactable = true;
			GameObject.Find ("ArmorWindow_Group").GetComponent<CanvasGroup> ().blocksRaycasts = true;
		}
		else if (isArmorWindowOpen == true) 
		{
			isArmorWindowOpen = false;
			print ("Armor Window has been closed");
			GameObject.Find ("ArmorWindow_Group").GetComponent<CanvasGroup> ().alpha = 0;
			GameObject.Find ("ArmorWindow_Group").GetComponent<CanvasGroup> ().interactable = false;
			GameObject.Find ("ArmorWindow_Group").GetComponent<CanvasGroup> ().blocksRaycasts = false;
		}
	}
}
