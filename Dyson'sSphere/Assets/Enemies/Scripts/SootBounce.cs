using UnityEngine;
using System.Collections;

public class SootBounce : MonoBehaviour {


	private CharacterMotor theCharacterMotor;
	private GroundCheck theGroundCheck;
	private Animator theAnimator;
	public Rigidbody rb;
	private TrackPlayer track;
	private Vector3 relativePoint;
	private Vector3 movement;

	private int speed;
	private bool moving;

	private int LorR = 1;

	public float followDistance = 10f;
	float distance;

	void Start()
	{
		theCharacterMotor = GetComponent<CharacterMotor> ();
		theGroundCheck = GetComponentInChildren<GroundCheck> ();
		theAnimator = theCharacterMotor.theAnimator;
		rb = GetComponent<Rigidbody> ();
		track = GetComponent<TrackPlayer> ();
		speed = theCharacterMotor.baseSpeed;
	}

	void FixedUpdate ()
	{
		theAnimator.SetBool ("Jump", false);

		if(!moving)
			Follow ();

		if (moving && theGroundCheck.grounded == false) 
		{
			if (LorR == -1)
				theCharacterMotor.RightActivation ();
			else if (LorR == 1)
				theCharacterMotor.LeftActivation ();

		}
	}

	void Follow ()
	{

		distance = Vector3.Distance(transform.position, track.Target.position);
		relativePoint = transform.InverseTransformPoint(track.Target.position);


		if (relativePoint.x < -0.2) 
		{
			if (LorR == 1)
				LorR = -1;
			else
				LorR = 1;
		}


		if (distance < followDistance) 
		{
			Bounce ();
			StartCoroutine (Thrust (LorR));

		} 


	}

	void Bounce ()
	{

		if (theGroundCheck.grounded) 
		{
			theAnimator.SetBool ("Jump", true);
			theCharacterMotor.VerticalVelocity ();

		} 
		else 
		{
			theAnimator.SetBool ("Jump", false);
		}

	}

	public IEnumerator Thrust(int direction)   // pass 1 or -1, left or right
	{
		moving = true;
		//movement = new Vector3 (speed * direction, 0, 0);
		//rb.velocity = transform.TransformDirection (speed * direction, rb.velocity.x, 0);
		yield return new WaitForSeconds(1f);

		moving = false;

	}

}
