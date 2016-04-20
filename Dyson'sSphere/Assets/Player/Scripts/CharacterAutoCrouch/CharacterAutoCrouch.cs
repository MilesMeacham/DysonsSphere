// Author: Miles Meacham
// Description: Character Auto Crouch class

// NOTE* Do NOT add this to your character. Attach the prefab "Auto Crouch"
// because this script needs two other scripts and box colliders to work.

using UnityEngine;
using System.Collections;

// Character Auto Crouch
// Makes the character crouch when he arrives at a crouchable area

public class CharacterAutoCrouch : MonoBehaviour {

	//public Transform target;

	public bool bottom;
	public bool top;

	public bool crouching;

	private CharacterMotor theCharacterMotor;
	public GroundCheck theGroundCheck;
	private CharacterAutoCrouchTop theCharacterAutoCrouchTop;
	private CharacterAutoCrouchBottom theCharacterAutoCrouchBottom;

	//Adjust Box Collider
	private BoxCollider playerCollider;
	private Vector3 originalColliderSize;
	private Vector3 originalColliderCenter;

	private Vector3 crouchedColliderSize = new Vector3 (1.65f, 0.85f, 1f);
	private Vector3 crouchedColliderCenter = new Vector3 (0.3f, -0.4f, 0f);


	//Animator
	private Animator theAnimator;

	// Use this for initialization
	void Start () 
	{
		theCharacterMotor = GetComponentInParent<CharacterMotor> ();
		theCharacterAutoCrouchTop = GetComponentInChildren<CharacterAutoCrouchTop> ();
		theCharacterAutoCrouchBottom = GetComponentInChildren<CharacterAutoCrouchBottom> ();
		theAnimator = GetComponentInParent<CharacterMotor>().theAnimator;
		playerCollider = GetComponentInParent<BoxCollider>();
		originalColliderSize = playerCollider.size;
		originalColliderCenter = playerCollider.center;
	}
	
	// Update is called once per frame
	void Update () 
	{

		// if the bottom collider is not touching gorund and the top is touching ground
		// and the character is grounded, then crouch;
		if (!bottom && top && theGroundCheck.grounded && !crouching) 
		{
			crouching = true;
			theAnimator.SetBool ("Crouch", true);

			// crouch
			//theCharacterMotor.transform.localScale = new Vector3 (theCharacterMotor.transform.localScale.x, theCharacterMotor.transform.localScale.y / 2, theCharacterMotor.transform.localScale.z);

			// adjust the colliders because the shrink when the character crouches
			playerCollider.size = crouchedColliderSize;
			playerCollider.center = crouchedColliderCenter;
			//theCharacterAutoCrouchTop.transform.localPosition = new Vector3 (theCharacterAutoCrouchTop.transform.localPosition.x, theCharacterAutoCrouchTop.transform.localPosition.y * 3, theCharacterAutoCrouchTop.transform.localPosition.z);
			//theCharacterAutoCrouchTop.transform.localScale = new Vector3 (theCharacterAutoCrouchTop.transform.localScale.x, theCharacterAutoCrouchTop.transform.localScale.y * 2, theCharacterAutoCrouchTop.transform.localScale.z);

		}


		// if the character is crouching and the box collider stops touching the ceiling, uncrouch
		if (crouching && !top)
		{
			crouching = false;
			theAnimator.SetBool ("Crouch", false);
			// uncrouch
			//theCharacterMotor.transform.localScale = new Vector3 (theCharacterMotor.transform.localScale.x, theCharacterMotor.transform.localScale.y * 2, theCharacterMotor.transform.localScale.z);

			// set the size and position of the colliders back to normal.
			playerCollider.size = originalColliderSize;
			playerCollider.center = originalColliderCenter;
			//theCharacterAutoCrouchTop.transform.localPosition = new Vector3 (theCharacterAutoCrouchTop.transform.localPosition.x, theCharacterAutoCrouchTop.transform.localPosition.y / 3, theCharacterAutoCrouchTop.transform.localPosition.z);
			//theCharacterAutoCrouchTop.transform.localScale = new Vector3 (theCharacterAutoCrouchTop.transform.localScale.x, theCharacterAutoCrouchTop.transform.localScale.y / 2, theCharacterAutoCrouchTop.transform.localScale.z);

		}

	}
}