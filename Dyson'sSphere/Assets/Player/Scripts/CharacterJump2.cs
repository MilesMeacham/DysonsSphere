using UnityEngine;
using System.Collections;


public class CharacterJump2 : MonoBehaviour {

	public CharacterMotor theCharacterMotor;
	public GroundCheck theGroundCheck;
	
	//jumping variables
	public bool doubleJumped;
	private bool jumped;
	
	//Animator
	private Animator theAnimator;
	private bool turningOffDoubleJumpAnimation;
	private bool turningOffJumpAnimation;
	private bool needToLand;

	// Use this for initialization
	void Start () {
		theGroundCheck = GetComponentInChildren<GroundCheck> ();
		theCharacterMotor = GetComponent<CharacterMotor> ();
		theAnimator = GetComponentInChildren<Animator>();
		
	}
	
	
	void FixedUpdate () 
	{
		if(needToLand == true && theGroundCheck.grounded == true)
		{
			theAnimator.SetBool ("Land", true);
			needToLand = false;
		}

		if(theGroundCheck.grounded)
		{
			doubleJumped = false;
			needToLand = false;
		}

		else
		{
			needToLand = true;
			theAnimator.SetBool ("Land", false);
		}


		if(doubleJumped == true && turningOffDoubleJumpAnimation == false)
			StartCoroutine (TurnOffDoubleJumpAnimation());

		if(jumped == true && turningOffJumpAnimation == false)
			StartCoroutine (TurnOffJumpAnimation());
	}
	
	//keyboard jumping
	public void Jump () {
		if (theGroundCheck.grounded && !doubleJumped) {
			theCharacterMotor.VerticalVelocity ();
			jumped = true;
			theAnimator.SetBool ("Jump", true);
		}
		else if (!doubleJumped) 
		{
			theCharacterMotor.VerticalVelocity ();
			doubleJumped = true;
			theAnimator.SetBool ("Double Jump", true);
		}

		//theAnimator.SetBool ("Jump", false);

	}

	public IEnumerator TurnOffDoubleJumpAnimation()
	{
		turningOffDoubleJumpAnimation = true;
		yield return new WaitForSeconds(0.2f);
		theAnimator.SetBool ("Double Jump", false);
		turningOffDoubleJumpAnimation = false;
		
	}

	public IEnumerator TurnOffJumpAnimation()
	{
		turningOffJumpAnimation = true;
		yield return new WaitForSeconds(0.2f);
		theAnimator.SetBool ("Jump", false);
		needToLand = true;
		//jumped = false;
		turningOffJumpAnimation = false;
		
	}

}//End of Monobehavior
