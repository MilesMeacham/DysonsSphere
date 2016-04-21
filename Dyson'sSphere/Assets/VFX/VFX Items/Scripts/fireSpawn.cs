using UnityEngine;
using System.Collections;

public class fireSpawn : MonoBehaviour {

	public GameObject fireGroup;
	public float waitForIt;
	private bool canPress;


	// Use this for initialization
	void Start () 
	{
		fireGroup.SetActive(false);
		canPress = true;
	}
	
	// Update is called once per frame
	void Update () 
	{
		if(Input.GetKeyDown(KeyCode.Q) && canPress == true)
		{
			canPress = false;
			fireGroup.SetActive(true);
			StartCoroutine(stopFire());
		}
	}

	private IEnumerator stopFire ()
	{
		yield return new WaitForSeconds (waitForIt);
		fireGroup.SetActive(false);
		canPress = true;
	}
}
