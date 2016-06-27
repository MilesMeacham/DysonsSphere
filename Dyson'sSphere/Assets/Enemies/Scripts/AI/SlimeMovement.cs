using UnityEngine;
using System.Collections;

public class SlimeMovement : MonoBehaviour {

	private bool isQuitting = false;
	private CharacterMotor theCharacterMotor;
	private TrackPlayer player;
	private bool jumpReady = true;
	private bool currentlyIdle = false;
	private bool walkReady;
	private bool moveRight;
	private float walkTime;
	private Vector3 spawnLocation;

	public float jumpMoveSpeed = 3;
	public float aggroDistance = 10;
	public float jumpDelay = 0.3f;
	public float jumpCooldown = 2f;
	public float walkMin, walkMax, idleMin, idleMax;

	public GameObject smallSlime;
	public bool spawnSmallerSlimes;

	void Start () 
	{
		theCharacterMotor = gameObject.GetComponent<CharacterMotor> ();
		player = GetComponent<TrackPlayer> ();
	}

	// Need this so that it doesn't try to spawn the little slimes if you quit the application
	void OnApplicationQuit()
	{
		isQuitting = true;
	}
		
	void OnDisable()
	{
		if (spawnSmallerSlimes && isQuitting == false) 
		{
			spawnLocation = new Vector3 (transform.position.x - 1, transform.position.y, transform.position.z);
			Instantiate (smallSlime, spawnLocation, transform.rotation);

			spawnLocation = new Vector3 (transform.position.x + 1, transform.position.y, transform.position.z);
			Instantiate (smallSlime, spawnLocation, transform.rotation);
		}
	}
	
	// Update is called once per frame
	void FixedUpdate () 
	{
		if (player.targetDistance < aggroDistance)
			AggroMovement ();
		else
			IdleMovement ();
	}


	void IdleMovement ()
	{


		if (jumpReady)
			StartCoroutine (Jump ());
		else if (walkReady) 
		{
			if (walkTime <= 0)
				walkTime = Random.Range (walkMin, walkMax);

			if (moveRight)
				theCharacterMotor.RightActivation ();
			else
				theCharacterMotor.LeftActivation ();

			walkTime -= Time.deltaTime;

			if (walkTime <= 0)
				walkReady = false;
		} 
		else 
		{
			if(currentlyIdle != true)
				StartCoroutine (Idle ());

		}


			

	}

	void AggroMovement ()
	{
		


		if (player.frontOrBack.x < 0 && theCharacterMotor.facingRight == false) 
			theCharacterMotor.RightActivation ();
		else if (player.frontOrBack.x < 0 && theCharacterMotor.facingRight == true)
			theCharacterMotor.LeftActivation ();


		if (jumpReady)
			StartCoroutine (Jump ());

		if (theCharacterMotor.facingRight)
			theCharacterMotor.RightActivation ();
		else
			theCharacterMotor.LeftActivation();



	}

	IEnumerator Idle()
	{
		currentlyIdle = true;
		float idleTime = Random.Range (idleMin, idleMax);

		yield return new WaitForSeconds (idleTime);

		walkReady = true;
		currentlyIdle = false;

	}

	IEnumerator Jump()
	{
		jumpReady = false;

		float randNumb = Random.Range (0, 10);

		yield return new WaitForSeconds (jumpDelay);

		theCharacterMotor.VerticalVelocity ();

		if (randNumb < 5) 
		{
			theCharacterMotor.LeftActivation ();
			moveRight = false;
		} 
		else 
		{
			theCharacterMotor.RightActivation ();
			moveRight = true;
		}

		StartCoroutine (JumpCooldown());
	}

	IEnumerator JumpCooldown()
	{

		yield return new WaitForSeconds (jumpCooldown);

		jumpReady = true;

	}
}
