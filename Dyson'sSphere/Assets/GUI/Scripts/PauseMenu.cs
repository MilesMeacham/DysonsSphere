using UnityEngine;
using System.Collections;

public class PauseMenu : MonoBehaviour {


	public void Pause () 
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
