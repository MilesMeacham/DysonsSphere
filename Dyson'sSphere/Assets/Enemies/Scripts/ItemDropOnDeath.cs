using UnityEngine;
using System.Collections;

public class ItemDropOnDeath : MonoBehaviour {

	private bool isQuitting;

	// Need this so that it doesn't try to spawn the little slimes if you quit the application
	void OnApplicationQuit()
	{
		isQuitting = true;
	}

	void OnDisable()
	{
		if (isQuitting == false) 
		{
			
		}
	}

}
