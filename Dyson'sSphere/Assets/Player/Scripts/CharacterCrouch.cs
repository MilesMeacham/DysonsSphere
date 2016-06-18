using UnityEngine;
using System.Collections;

public class CharacterCrouch : MonoBehaviour {

	public bool crouching;
	public bool top;
	public bool tryToStand;

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

		theAnimator = GetComponentInChildren<Animator>();
		playerCollider = GetComponentInParent<BoxCollider>();
		originalColliderSize = playerCollider.size;
		originalColliderCenter = playerCollider.center;
	}

	void FixedUpdate ()
	{
		if (tryToStand)
			Stand ();

	}


	// Toggle Crouch
	public void Crouch ()
	{
		if (!crouching) 
		{
			tryToStand = false;
			crouching = true;
			theAnimator.SetBool ("Crouch", true);

			// adjust the colliders because the shrink when the character crouches
			playerCollider.size = crouchedColliderSize;
			playerCollider.center = crouchedColliderCenter;
		}
		else 
		{
			Stand ();
		}
	}

	void Stand()
	{
		if (!top) 
		{
			crouching = false;
			tryToStand = false;
			theAnimator.SetBool ("Crouch", false);

			// set the size and position of the colliders back to normal.
			playerCollider.size = originalColliderSize;
			playerCollider.center = originalColliderCenter;
		} 
		else
			tryToStand = true;
	}



/*    THIS CODE IS FOR THE NON TOGGLE CROUCH -- IT DOESN'T WORK IN UNITY EDITOR BUT WORKS WHEN YOU BUILD
	void FixedUpdate ()
	{
		if (tryToStand)
			UnCrouch ();

	}


	// Update is called once per frame
	public void Crouch ()
	{
		tryToStand = false;
		crouching = true;
		theAnimator.SetBool ("Crouch", true);

		// adjust the colliders because the shrink when the character crouches
		playerCollider.size = crouchedColliderSize;
		playerCollider.center = crouchedColliderCenter;

	}

	public void UnCrouch ()
	{
		if (crouching && !top) {
			crouching = false;
			theAnimator.SetBool ("Crouch", false);

			// set the size and position of the colliders back to normal.
			playerCollider.size = originalColliderSize;
			playerCollider.center = originalColliderCenter;
		} else {
			tryToStand = true;
		}

	}
*/
}