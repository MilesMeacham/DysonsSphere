using UnityEngine;
using System.Collections;

public class DoorOpen : MonoBehaviour {

	public bool mediumDoor;
	public bool largeDoor;

	private Animator theAnimator;

	// Use this for initialization
	void Start () 
	{
		theAnimator = GetComponent<Animator> ();
		MineralCounter.onMineralsCollected += onMineralsCollected;
	}
	

	void onMineralsCollected(int door)
	{

		if (door == 0)
			theAnimator.SetBool ("Opened", false);
		else if (door == 1 && mediumDoor == true)
			theAnimator.SetBool ("Opened", true);
		else if (door == 2 && largeDoor == true)
			theAnimator.SetBool ("Opened", true);


	}

}
