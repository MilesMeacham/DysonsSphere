// Author: Miles Meacham
// Description: Character Jump Class 

using UnityEngine;
using System.Collections;

// Character Jump
// Enables the character to jump

public class CharacterJump : MonoBehaviour {

	public CharacterMotor2 theCharacterMotor;
	public GroundCheck theGroundCheck;
	
	//jumping variables
	public bool doubleJumped;



	// Use this for initialization
	void Start () {
		theGroundCheck = GetComponentInChildren<GroundCheck> ();
		theCharacterMotor = GetComponent<CharacterMotor2> ();

	}
	

	void FixedUpdate () 
	{
		
	}

	//keyboard jumping
	public void Jump () {
		if (theGroundCheck.grounded && !doubleJumped)
			theCharacterMotor.VerticalVelocity ();
		else if (!doubleJumped) 
		{
			theCharacterMotor.VerticalVelocity ();
			doubleJumped = true;
		}
	}

	
} // END OF CharacterJump CLASS