// Author: Miles Meacham
// Description: This assists the Character Auto Crouch script

using UnityEngine;
using System.Collections;

// Character Auto Crouch Bottom
// Connected to the bottom collider
public class CharacterAutoCrouchBottom : MonoBehaviour {
	
	private BoxCollider bottomCollider;
	private CharacterAutoCrouch theAutoCrouch;

	public bool myGround;
	
	// Use this for initialization
	void Start () 
	{
		bottomCollider = GetComponent<BoxCollider> ();
		theAutoCrouch = GetComponentInParent<CharacterAutoCrouch> ();
	}
	
	void OnTriggerEnter (Collider collider)
	{
		// Layer 8 is the ground Layer
		if (collider.gameObject.layer == 8) 
		{

			theAutoCrouch.bottom = true;
			myGround = true;
		}
		
	}
	void OnTriggerExit (Collider collider)
	{
		// Layer 8 is the ground Layer
		if (collider.gameObject.layer == 8) 
		{
			theAutoCrouch.bottom = false;
			myGround = false;
		}
	}
}// END OF CharacterAutoCrouchBottom CLASS
