// Author: Miles Meacham
// Description: This assists the Character Auto Crouch script

using UnityEngine;
using System.Collections;

// Character Auto Crouch Top
// Connected to the top collider
public class CharacterAutoCrouchTop : MonoBehaviour {

	public BoxCollider topCollider;
	private CharacterAutoCrouch theAutoCrouch;

	// Use this for initialization
	void Start () 
	{
		topCollider = GetComponent<BoxCollider> ();
		theAutoCrouch = GetComponentInParent<CharacterAutoCrouch> ();
	}
	
	void OnTriggerEnter (Collider collider)
	{
		// Layer 8 is the ground Layer
		if (collider.gameObject.layer == 8) 
		{
			theAutoCrouch.top = true;
		}
		
	}
	void OnTriggerExit (Collider collider)
	{
		// Layer 8 is the ground Layer
		if (collider.gameObject.layer == 8) 
			theAutoCrouch.top = false;
	}

}// END OF CharacterAutoCrouchTop CLASS
