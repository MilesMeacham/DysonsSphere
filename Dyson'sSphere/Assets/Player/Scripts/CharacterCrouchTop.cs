// Author: Miles Meacham
// Description: This assists the Character Auto Crouch script

using UnityEngine;
using System.Collections;

// Character Auto Crouch Top
// Connected to the top collider
public class CharacterCrouchTop : MonoBehaviour {

	public BoxCollider topCollider;
	private CharacterCrouch theCrouch;

	// Use this for initialization
	void Start () 
	{
		topCollider = GetComponent<BoxCollider> ();
		theCrouch = GetComponentInParent<CharacterCrouch> ();
	}

	void OnTriggerEnter (Collider collider)
	{
		// Layer 8 is the ground Layer
		if (collider.gameObject.layer == 8) 
		{
			theCrouch.top = true;
		}

	}
	void OnTriggerExit (Collider collider)
	{
		// Layer 8 is the ground Layer
		if (collider.gameObject.layer == 8) 
			theCrouch.top = false;
	}

}// END OF CharacterAutoCrouchTop CLASS
