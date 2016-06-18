using UnityEngine;
using System.Collections;

public class WallCheck : MonoBehaviour {

	public bool grounded;
	public Transform groundCheck;

	// I am using these to prevent a small bug
	public float colliderRadiusLarge = 0.7f;
	public float colliderRadiusNormal = 0.5f;

	private CharacterJump theCharacterJump;

	private CapsuleCollider wallCollider;

	// Use this for initialization
	void Start () 
	{
		groundCheck = gameObject.GetComponent<Transform> ();
		theCharacterJump = GetComponentInParent<CharacterJump> ();
		wallCollider = GetComponent<CapsuleCollider> ();
	}

	// Purpose: Set grounded to "true" if "groundCheck" enters a "Ground" object
	// Parameters: Collider
	// Returns: void
	// Pre-conditions: 
	// Post-conditions: 
	// -----------------------------------------------------------------
	void OnTriggerEnter (Collider collider)
	{
		// Layer 8 is the ground Layer
		if (collider.gameObject.layer == 8) 
		{
			grounded = true;

			wallCollider.radius = colliderRadiusLarge;

		}

	}

	void OnTriggerStay (Collider collider)
	{
		// Layer 8 is the ground Layer
		if (collider.gameObject.layer == 8) 
			grounded = true;
	}



	void OnTriggerExit (Collider collider)
	{
		// Layer 8 is the ground Layer
		if (collider.gameObject.layer == 8) 
		{
			grounded = false;
			wallCollider.radius = colliderRadiusNormal;
		}
	}

} // END OF GroundCheck CLASS
