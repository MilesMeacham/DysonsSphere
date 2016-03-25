using UnityEngine;
using System.Collections;

public class playerMovement : MonoBehaviour {

	Animator anim;

	public Rigidbody rb;

	
	//movement variables
	public int speed = 5;
	public int jumpForce = 10;
	public int moveVelocity = 10;
	public int maxSpeed = 80;
	public bool moveLeft = false;
	public bool moveRight = false;
	public bool crouching = false;
	
	//jumping variables
	public bool grounded;
	public Transform groundCheck;
	public LayerMask whatIsGround;
	public float groundCheckRadius = 0.1f;
	
	//swiping variables
	public float minSwipeDistY = 50;
	public float minSwipeDistX = 50;
	private Vector2 startPos;
	
	//shooting variables
	public GameObject bullet;
	public Transform shootingPoint;
	
	//change gravity/orientation variables
	public TransferGravity gravityCanon;
	public GameObject canonPosition;
	public CharacterGravity characterGrav;
	public bool facingRight = true;
	
	
	// Use this for initialization
	void Start () {
		anim = GetComponent<Animator>();
		rb = GetComponent<Rigidbody> ();
		characterGrav = GetComponent<CharacterGravity> ();
		gravityCanon = FindObjectOfType<TransferGravity> ();
		moveLeft = false;
		moveRight = false;
		crouching = false;
		

		
		
	}
	
	// Update is called once per frame
	void Update () {
		
		rb.velocity = Vector3.ClampMagnitude(rb.velocity, maxSpeed);
		
		if(rb.transform.position.z != 0)
			rb.transform.position = new Vector3 (rb.transform.position.x, rb.transform.position.y, 0);
	}
	
	void FixedUpdate () {
		//Keyboard Movements
		if (grounded && Input.GetKey (KeyCode.Space)) {
			Jump ();
		}
		
		PlayerMovement ();
		
		//phone movement and attack
		//SwipeMovement ();
		
		if(Input.GetKeyDown(KeyCode.F)) 
		{
			Attack ();
		}
		
	}
	
	public void LeftArrow()
	{
		if (moveLeft == false){

			moveLeft = true;
			if(facingRight == true)
			{
				Flip ();
			}
		}
		else if (moveLeft == true)
		{
			moveLeft = false;
		}
	}
	
	public void RightArrow()
	{
		if (moveRight == false){

			moveRight = true;
			if(facingRight == false)
			{
				Flip ();
			}
		}
		else if (moveRight == true){

			moveRight = false;
		}
	}
	
	public void UnpressedArrow()//NO LONGER NEEDED
	{
		Move (0);
	}
	
	public void TouchJump()
	{
		Jump ();
	}
	
	public void TouchShoot()
	{
		Attack ();
	}

	public void Crouch()
	{
		if(crouching == false)
		{
			anim.SetBool("isCrouched", true);
			crouching = true;
		}
		else if(crouching == true)
		{
			anim.SetBool("isCrouched", false);
			crouching = false;
		}
	}
	
	public void Move(int moveInput)
	{
		moveVelocity = speed * moveInput;
	}
	
	
	
	/*
	//this controls all the swipes
	void SwipeMovement () {
		if (Input.touchCount > 0) 	
		{
			Touch touch = Input.touches[0];
			
			switch (touch.phase) 
				
			{
				
			case TouchPhase.Began:
				
				startPos = touch.position;
				break;
				
			case TouchPhase.Ended:
				
				float swipeDistVertical = (new Vector3(0, touch.position.y, 0) - new Vector3(0, startPos.y, 0)).magnitude;
				
				if (swipeDistVertical > minSwipeDistY) 	
				{
					float swipeValue = Mathf.Sign(touch.position.y - startPos.y);
					
					//up swipe
					if (swipeValue > 0 && grounded)
						rb.velocity = transform.TransformDirection (new Vector3 (rb.velocity.x, jumpForce, 0));
					//down swipe
					else if (swipeValue < 0 && grounded)
						rb.velocity = transform.TransformDirection (new Vector3 (0, -jumpForce, 0));
				}
				
				float swipeDistHorizontal = (new Vector3(touch.position.x,0, 0) - new Vector3(startPos.x, 0, 0)).magnitude;
				
				if (swipeDistHorizontal > minSwipeDistX) 	
				{
					float swipeValue = Mathf.Sign(touch.position.x - startPos.x);
					
					//right swipe
					if (swipeValue > 0)
						rb.velocity = transform.TransformDirection (new Vector3 (moveVelocity, 0, 0));
					//left swipe
					else if (swipeValue < 0)
						rb.velocity = transform.TransformDirection (new Vector3 (-moveVelocity, 0, 0));
				}
				break;
			}
		}
	}

*/
	
	//tap to attack
	public void Attack (){
		Instantiate (bullet, shootingPoint.position, shootingPoint.rotation);
	}
	
	//keyboard or controller movement
	void PlayerMovement () {
		if(moveLeft == true){

			rb.MovePosition (rb.position + transform.TransformDirection (-speed, 0, 0) * Time.deltaTime);
			//rb.velocity = new Vector3(speed, 0, 0);
			moveRight = false;
		}

		if(moveRight == true){

			rb.MovePosition (rb.position + transform.TransformDirection (speed, 0, 0) * Time.deltaTime);
			//rb.velocity = new Vector3(speed, 0, 0);
			moveLeft = false;
		}
		//rb.MovePosition (rb.position + transform.TransformDirection (Input.GetAxisRaw ("Horizontal"), 0, 0) * speed * Time.deltaTime);
	}
	
	//keyboard jumping
	public void Jump () {
		if (grounded == true){
		rb.velocity = transform.TransformDirection (new Vector3 (0, jumpForce, 0));
		}
	}

	void OnCollisionEnter (Collision collider){
		// Layer 8 is the ground Layer
		if (collider.gameObject.layer == 8) {
			grounded = true;
			transform.parent = collider.gameObject.transform.parent;
		}
	}

	//ground detection
	void OnCollisionStay (Collision collider){
		if (collider.gameObject.layer == 8)
			grounded = true;
	}
	void OnCollisionExit (Collision collider){
		if (collider.gameObject.layer == 8)
			grounded = false;
	}
	
	void OnTriggerEnter (Collider other) {
		
		if (other.gameObject.layer == 10) {
			StartCoroutine ("ChangeGravity");
			
		}
		
	}
	
	public IEnumerator ChangeGravity (){
		
		GetComponent<Renderer> ().enabled = false;
		
		rb.GetComponent<Movement> ().enabled = false;
		
		rb.position = canonPosition.transform.position;
		
		yield return new WaitForSeconds (2);
		
		rb.velocity = transform.TransformDirection (new Vector3 (-40, 40, 0));
		
		GetComponent<Renderer> ().enabled = true;
		rb.GetComponent<Movement> ().enabled = true;
		
		//yield return new WaitForSeconds (3);
		
		characterGrav.attractor = gravityCanon.targetPlanet.GetComponent<Attractor>();
	}

	//Changes character facing
	void Flip(){

		facingRight = !facingRight;
		Vector3 theScale = transform.localScale;
		theScale.x *= -1;
		transform.localScale = theScale;
	}

}//END MONOBEHAVIOR
