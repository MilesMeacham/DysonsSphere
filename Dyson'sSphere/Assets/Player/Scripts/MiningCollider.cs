﻿using UnityEngine;
using System.Collections;

public class MiningCollider : MonoBehaviour {

	// Adjust this if you want to mine faster or slower
	public float miningDelay = 0.5f;
	public float miningDamage = 1;

	//[HideInInspector]
	public bool miningWait;

	private MineralDeposit mineralDeposit;

	void OnTriggerStay(Collider other)
	{
		
		if (!miningWait && other.gameObject.tag == "Destructables") 
		{
			mineralDeposit = other.GetComponent<MineralDeposit> ();
			StartCoroutine (MiningCO());
		}
			


	}

	public IEnumerator MiningCO()
	{
		miningWait = true;
		yield return new WaitForSeconds(miningDelay);
		mineralDeposit.RemoveHit (miningDamage);
		miningWait = false;

	}

	public void AdjustMiningDelay (float adjustment)
	{
		miningDelay /= adjustment;

		print (miningDelay);
	}

	public void IncreaseMiningDamage (float adjustment)
	{
		miningDamage += adjustment;
	}
}
