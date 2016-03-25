using UnityEngine;
using System.Collections;

public class Movement : MonoBehaviour {
	
	public Rigidbody rb;
	
	//movement variables
	public int speed = 5;
	public int jumpForce = 10;
	public int moveVelocity = 10;
	public int maxSpeed = 20;
	
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

	//change gravity variables
	public TransferGravity gravityCanon;
	public GameObject canonPosition;
	public CharacterGravity characterGrav;

	
	// Use this for initialization
	void Start () {
		rb = GetComponent<Rigidbody> ();
		characterGrav = GetComponent<CharacterGravity> ();
		gravityCanon = FindObjectOfType<TransferGravity> ();



		
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
		Move (-1);
	}

	public void RightArrow()
	{
		Move (1);
	}

	public void UnpressedArrow()
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
		rb.MovePosition (rb.position + transform.TransformDirection (Input.GetAxisRaw ("Horizontal"), 0, 0) * speed * Time.deltaTime);
		//rb.velocity = transform.TransformDirection (new Vector3 (speed, 0, 0));
	}
	
	//keyboard jumping
	public void Jump () {
			rb.velocity = transform.TransformDirection (new Vector3 (0, jumpForce, 0));
	}
	
	//ground detection
	void OnCollisionEnter (Collision collider){
		// Layer 8 is the ground Layer
		if (collider.gameObject.layer == 8) {
			grounded = true;
			transform.parent = collider.gameObject.transform.parent;
		}
	}
	void OnCollisionExit (Collision collider){
		// Layer 8 is the ground Layer
		if (collider.gameObject.layer == 8) {
			grounded = false;


		}
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

	
}
