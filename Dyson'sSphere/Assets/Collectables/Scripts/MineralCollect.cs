using UnityEngine;
using System.Collections;

public class MineralCollect : MonoBehaviour {
    
	public int mineralAmount = 1;

	public MineralCounter theMineralCounter;

    // Use this for initialization
    void Start () 
	{
		//theMineralCounter = gameObject.GetComponent<MineralCounter> ();
    }


    void OnTriggerEnter (Collider Collider)
    {
        if (Collider.gameObject.tag == "Player")
        {
			theMineralCounter.AddMineral (mineralAmount);
			gameObject.SetActive (false);
        }
    }
}
