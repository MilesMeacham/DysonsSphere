// Author: Miles Meacham
// Description: Pace Between Walls and Gaps

using UnityEngine;
using System.Collections;

// EarthEnemy
// Script to make an enemy walk and turn around when they hit a wall or a gap.

public class PaceBetweenWalls : MonoBehaviour {

	private CharacterMotor theCharacterMotor;

	// Assign the correct box colliders to these in the editor
	public GroundCheck wallCheck;
	public GroundCheck gapCheck;

	private bool needToWalk = false;
	public bool turning;
	public float turnDuration = 1f;
	int tempSpeed;

	void Start () 
	{
		theCharacterMotor = gameObject.GetComponent<CharacterMotor> ();
	
		turning = false;
	}

	// Update is called once per frame
	void FixedUpdate () 
	{
		Movement ();


	}


	void Movement ()
	{
		if (wallCheck.grounded && !turning || !gapCheck.grounded && !turning) 
		{
			StartCoroutine ("TurnArroundCo");

		}
			
		if (!turning && theCharacterMotor.facingRight == true)
			theCharacterMotor.RightActivation ();
		else if (!turning)
			theCharacterMotor.LeftActivation ();
		

	}

	IEnumerator TurnArroundCo()
	{
		turning = true;

		yield return new WaitForSeconds (turnDuration);

		theCharacterMotor.Flip ();

		yield return new WaitForSeconds (turnDuration);
			

		turning = false;
	}
}
