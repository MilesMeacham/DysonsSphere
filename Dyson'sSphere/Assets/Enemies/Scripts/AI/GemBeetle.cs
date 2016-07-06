using UnityEngine;
using System.Collections;

public class GemBeetle : MonoBehaviour {

	private CharacterMotor theCharacterMotor;
	private TrackPlayer player;
	private GroundCheck theGroundCheck;
	private bool burrowing;
	private bool jumping;
	private bool turned;
	private float runTimer;
	private bool aggro = false;

	public float aggroDistance;
	public float runTime;		//The time the beetle will run before burrowing
	public float burrowAnimationTime;


	void Start () 
	{
		theCharacterMotor = gameObject.GetComponent<CharacterMotor> ();
		theGroundCheck = GetComponent<GroundCheck> ();
		player = GetComponent<TrackPlayer> ();
	}

	// Reset the needed variables if this gameobject is reused.
	void OnEnable()
	{
		burrowing = false;
		jumping = false;
		aggro = false;
		turned = false;
		runTimer = runTime;
	}

	void FixedUpdate () 
	{

		if (player.targetDistance < aggroDistance && !aggro)
			aggro = true;

		if (aggro)
			AggroMovement ();
		else
			IdleMovement ();

	}

	void IdleMovement ()
	{


	}

	void AggroMovement()
	{
		// Turn away from player when he first sees him. After that just keep running in that direction
		if (player.frontOrBack.x > 0 && theCharacterMotor.facingRight == false && !turned) 
			theCharacterMotor.RightActivation ();
		else if (player.frontOrBack.x > 0 && theCharacterMotor.facingRight == true && !turned)
			theCharacterMotor.LeftActivation ();

		if (!turned)
			turned = true;

		if (runTimer <= 0 && jumping == false)
			StartCoroutine (HighJump ());


		if (theCharacterMotor.facingRight && !jumping) {
			theCharacterMotor.RightActivation ();
			print ("Right");
		}
		else if (!jumping) {
			theCharacterMotor.LeftActivation();
			print ("Left");
		}

		if (burrowing == true && theGroundCheck.grounded == true)
			StartCoroutine(Burrow ());

		runTimer -= Time.deltaTime;

	}

	IEnumerator Burrow()
	{

		yield return new WaitForSeconds (burrowAnimationTime);

		this.gameObject.SetActive (false);

	}


	IEnumerator HighJump ()
	{
		jumping = true;

		theCharacterMotor.VerticalVelocity ();

		yield return new WaitForSeconds (0.5f);

		burrowing = true;
	}



}
