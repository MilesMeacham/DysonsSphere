// Author: Miles Meacham
// Description: Pace Between Walls and Gaps

using UnityEngine;
using System.Collections;

// EarthEnemy
// Script to make an enemy walk and turn around when they hit a wall or a gap.

public class PaceBetweenWalls : MonoBehaviour {

	private CharacterMotor2 theCharacterMotor;

	// Assign the correct box colliders to these in the editor
	public GroundCheck wallCheck;
	public GroundCheck gapCheck;


	public bool turning;
	public float turnDuration = 1f;
	int tempSpeed;

	void Start () 
	{
		theCharacterMotor = gameObject.GetComponent<CharacterMotor2> ();

		// Start the enemy moving right
		theCharacterMotor.RightActivation ();
	
		turning = false;
	}

	// Update is called once per frame
	void Update () 
	{
		Movement ();


	}


	void Movement ()
	{
		if (wallCheck.grounded && !turning || !gapCheck.grounded && !turning) 
		{
			StartCoroutine ("TurnArroundCo");
		}
	}

	IEnumerator TurnArroundCo()
	{
		turning = true;

		// Store the speed into a variable
		tempSpeed = theCharacterMotor.speed;

		// Turn the speed off so he doesn't keep running into the wall
		theCharacterMotor.speed = 0;

		yield return new WaitForSeconds (turnDuration);
			if(theCharacterMotor.movingLeft == true)
			{
				theCharacterMotor.movingLeft = false;
				
				theCharacterMotor.RightActivation ();
			}
			else if (theCharacterMotor.movingRight == true)
			{
				theCharacterMotor.movingRight = false;
				theCharacterMotor.LeftActivation ();
				
			}

		theCharacterMotor.speed = tempSpeed;
		yield return new WaitForSeconds (1f);
		turning = false;

	}
}
