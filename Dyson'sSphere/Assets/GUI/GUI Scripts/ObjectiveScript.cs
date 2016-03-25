using UnityEngine;
using System.Collections;

public class ObjectiveScript : MonoBehaviour {

	public static bool isObjectiveWindowOpen = true;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () 
	{
		if (Input.GetKeyDown ("o")) 
		{
			ObjectivePopup ();
		}
	}
	public void ObjectivePopup ()
	{
		if (isObjectiveWindowOpen == false)
		{
			isObjectiveWindowOpen = true;
			print ("The objective dialogue box is open.");
			GameObject.Find ("ObjectiveCanvas").GetComponent<CanvasGroup> ().alpha = 1;
			GameObject.Find ("ObjectiveCanvas").GetComponent<CanvasGroup> ().interactable = true;
			GameObject.Find ("ObjectiveCanvas").GetComponent<CanvasGroup> ().blocksRaycasts = true;
		}
		else if (isObjectiveWindowOpen == true)
		{
			isObjectiveWindowOpen= false;
			print ("The objective dialogue box is closed.");
			GameObject.Find ("ObjectiveCanvas").GetComponent<CanvasGroup> ().alpha = 0;
			GameObject.Find ("ObjectiveCanvas").GetComponent<CanvasGroup> ().interactable = false;
			GameObject.Find ("ObjectiveCanvas").GetComponent<CanvasGroup> ().blocksRaycasts = false;
		}
	}
}
