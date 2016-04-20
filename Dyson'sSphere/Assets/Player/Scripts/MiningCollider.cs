using UnityEngine;
using System.Collections;

public class MiningCollider : MonoBehaviour {

	// Adjust this if you want to mine faster or slower
	public float miningDelay = 0.5f;
	public int miningHit = 1;

	//[HideInInspector]
	public bool miningWait;

	private Destructable mineralDeposit;



	void OnTriggerStay(Collider other)
	{
		
		if (!miningWait && other.gameObject.tag == "Destructables") 
		{
			mineralDeposit = other.GetComponent<Destructable> ();
			StartCoroutine (MiningCO());
		}
			


	}

	public IEnumerator MiningCO()
	{
		miningWait = true;
		yield return new WaitForSeconds(miningDelay);
		mineralDeposit.RemoveHit (miningHit);
		miningWait = false;

	}
}
