using UnityEngine;
using System.Collections;

public class CharacterMotor : MonoBehaviour {
	
	// Character Rigidbody
	public Rigidbody rb;
	
	// Movement variables
	public int speed = 5;
	public int maxSpeed = 20;
	public Vector3 characterMovement;
	public Vector3 velocity;
	
	// Jumping variables
	public int jumpForce = 15;
	
	// Change orientatoin variable
	public bool facingRight = true;
	
	public bool movingLeft = false;
	public bool movingRight = false;
	
	// Use this for initialization
	void Start () 
	{
		rb = GetComponent<Rigidbody> ();
	}
	
	
	void FixedUpdate () 
	{
		// Keep player at maxSpeed
		//rb.velocity = Vector3.ClampMagnitude(rb.velocity, maxSpeed);
		
		// Keep character at '0' in z. We don't want the player to move in the z direction at all
		if(rb.transform.position.z != 0)
			rb.transform.position = new Vector3 (rb.transform.position.x, rb.transform.position.y, 0);
		
	}// END OF FIXED UPDATE
	
	
	// Purpose: Move the character left or right
	// Parameters: void
	// Returns: void
	// Pre-conditions: 
	// Post-conditions: 
	// -----------------------------------------------------------------
	public void LeftActivation () 
	{
		if(movingRight == false)
		{
			movingLeft = true;
			
			// Keep player at maxSpeed
			rb.velocity = Vector3.ClampMagnitude(rb.velocity, maxSpeed);
			
			// Keep character at '0' in z. We don't want the player to move in the z direction at all
			if(rb.transform.position.z != 0)
				rb.transform.position = new Vector3 (rb.transform.position.x, rb.transform.position.y, 0);
			
			if(facingRight == true)
			{
				Flip ();
				facingRight = false;
			}
			
			characterMovement = new Vector3 (speed, 0, 0);
			rb.MovePosition (rb.position + transform.TransformDirection (characterMovement) * Time.deltaTime);
		}
	}
	
	// Purpose: Move the character up or down (Jump)
	// Parameters: void
	// Returns: void
	// Pre-conditions: 
	// Post-conditions: 
	// -----------------------------------------------------------------
	public void RightActivation () 
	{
		if(movingLeft == false)
		{
			movingRight = true;
			// Keep player at maxSpeed
			rb.velocity = Vector3.ClampMagnitude(rb.velocity, maxSpeed);
			
			// Keep character at '0' in z. We don't want the player to move in the z direction at all
			if(rb.transform.position.z != 0)
				rb.transform.position = new Vector3 (rb.transform.position.x, rb.transform.position.y, 0);
			
			
			if(facingRight == false)
			{
				Flip ();
				facingRight = true;
			}
			
			characterMovement = new Vector3 (speed, 0, 0);
			rb.MovePosition (rb.position + transform.TransformDirection (characterMovement) * Time.deltaTime);
			
		}
	}
	
	// Purpose: Move the character up or down (Jump)
	// Parameters: void
	// Returns: void
	// Pre-conditions: 
	// Post-conditions: 
	// -----------------------------------------------------------------
	
	public void stationaryTest ()
	{
		rb.AddForce(new Vector3(0, 50, 0));
	}
	// Purpose: Move the character up or down (Jump)
	// Parameters: void
	// Returns: void
	// Pre-conditions: 
	// Post-conditions: 
	// -----------------------------------------------------------------
	public void VerticalVelocity ()
	{
		characterMovement = new Vector3 (0, jumpForce, 0);
		rb.velocity = transform.TransformDirection (characterMovement);
	}
	
	// Purpose: Makes the character inherit the rotation of the ring he is on
	// Parameters: collider
	// Returns: void
	// Pre-conditions: 
	// Post-conditions: 
	// -----------------------------------------------------------------
	void OnCollisionEnter (Collision collider)
	{
		// Layer 8 is the ground Layer
		if (collider.gameObject.layer == 8) 
			transform.parent = collider.gameObject.transform.parent;
		
	}
	
	// Purpose: Flips the character and reverses his speed
	// Parameters: void
	// Returns: void
	// Pre-conditions: 
	// Post-conditions: 
	// -----------------------------------------------------------------
	public void Flip()
	{
		facingRight = !facingRight;
		
		// reverse speed
		speed *= -1;
		
		// create a vector3 to hold the player scale and flip it
		Vector3 theScale = transform.localScale;
		theScale.x *= -1;
		transform.localScale = theScale;
		
	}
}