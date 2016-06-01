using UnityEngine;
using System.Collections;

public class CharacterMotor : MonoBehaviour {
	
	// Character Rigidbody
	public Rigidbody rb;

	public Vector3 characterMovement;
	public Vector3 velocity;
	
	// Movement variables
	private float speed;
	public int baseSpeed = 7;
	public float speedMultiplier = 1;
	public float speedUpgrade = 0;
	public int maxSpeed = 20;

	
	// Jumping variables
	public float jumpForce = 15;
	
	// Change orientatoin variable
	public bool facingRight = true;
	
	public bool movingLeft = false;
	public bool movingRight = false;

	//Animator
	public Animator theAnimator;
	private bool walking;
	
	// Use this for initialization
	void Start () 
	{
		rb = GetComponent<Rigidbody> ();
		theAnimator = GetComponentInChildren<Animator>();
	}
	
	
	void FixedUpdate () 
	{

		
		// Keep character at '0' in z. We don't want the player to move in the z direction at all
		if(rb.transform.position.z != 0)
			rb.transform.position = new Vector3 (rb.transform.position.x, rb.transform.position.y, 0);

		if (rb.velocity.x < 0.5f) 
		{
			movingLeft = false;
			movingRight = false;

			if (walking) 
			{
				walking = false;
				theAnimator.SetBool ("Walk", walking);
			}

		}
		
	}

	public void LeftActivation () 
	{

		movingLeft = true;
		movingRight = false;

		if (!walking) 
		{
			walking = true;
			theAnimator.SetBool ("Walk", walking);
		}

		if(facingRight == true)
			Flip ();

		speed = (baseSpeed * speedMultiplier) - speedUpgrade;
		
		characterMovement = new Vector3 (speed, 0, 0);
		rb.MovePosition (rb.position + transform.TransformDirection (characterMovement) * Time.deltaTime);

		// Keep player at maxSpeed
		rb.velocity = Vector3.ClampMagnitude(rb.velocity, maxSpeed);

	}

	public void RightActivation () 
	{

		movingRight = true;
		movingLeft = false;

		if (!walking) 
		{
			walking = true;
			theAnimator.SetBool ("Walk", walking);
		}
	
		if(facingRight == false)
			Flip ();


		speed = (baseSpeed * speedMultiplier) + speedUpgrade;
		
		characterMovement = new Vector3 (speed, 0, 0);
		rb.MovePosition (rb.position + transform.TransformDirection (characterMovement) * Time.deltaTime);

		// Keep player at maxSpeed
		rb.velocity = Vector3.ClampMagnitude(rb.velocity, maxSpeed);
		

	}
	
	public void stationaryTest ()
	{
		rb.AddForce(new Vector3(0, 50, 0));
	}

	public void VerticalVelocity ()
	{
		characterMovement = new Vector3 (0, jumpForce, 0);
		rb.velocity = transform.TransformDirection (characterMovement);
	}
	
	// Purpose: Makes the character inherit the rotation of the ring he is on
	void OnCollisionEnter (Collision collider)
	{
		// Layer 8 is the ground Layer
		if (collider.gameObject.layer == 8) 
			transform.parent = collider.gameObject.transform.parent;
		
	}
	
	// Purpose: Flips the character and reverses his speed
	public void Flip()
	{
		facingRight = !facingRight;
		
		// reverse speed
		baseSpeed *= -1;
		
		// create a vector3 to hold the player scale and flip it
		Vector3 theScale = transform.localScale;
		theScale.x *= -1;
		transform.localScale = theScale;
		
	}
}