using UnityEngine;
using System.Collections;

public class PauseMenu : MonoBehaviour {

	// Update is called once per frame
	void Update () 
	{
		if (Input.GetKeyDown (KeyCode.P)) 
		{
			if (Time.timeScale == 1)
			{
				Time.timeScale= 0; 
				print ("Pause");
			}
			else
				Time.timeScale = 1;

		}


	}
}
