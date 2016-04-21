using UnityEngine;
using System.Collections;

public class KeyboardControls : MonoBehaviour {
	
	private CharacterMotor theCharacterMotor;
	private CharacterJump2 theCharacterJump;
	private CharacterShot theCharacterShot;
    private CharacterDrill theCharacterDrill;
	private CharacterCrouch theCharacterCrouch;
	public MiningCollider theMiningCollider;
	private Animator theAnimator;
	
	// Use this for initialization
	void Start () 
	{
		theCharacterMotor = gameObject.GetComponent<CharacterMotor> ();
		theCharacterJump = gameObject.GetComponent<CharacterJump2> ();
		theCharacterShot = gameObject.GetComponent<CharacterShot> ();
		theCharacterCrouch = gameObject.GetComponent<CharacterCrouch> ();
		theAnimator = theCharacterMotor.theAnimator;
    }

	void Update ()
	{

		if (Input.GetKeyDown (KeyCode.Z)) 
		{
			theMiningCollider.gameObject.SetActive (true);

			theAnimator.SetBool ("Drill", true);
		}

		if (Input.GetKeyUp (KeyCode.Z)) 
		{
			theMiningCollider.gameObject.SetActive (false);
			theMiningCollider.miningWait = false;
			theAnimator.SetBool ("Drill", false);
		}

		if(Input.GetKeyDown(KeyCode.F))
		{
			theCharacterShot.shot();
		}

		if (Input.GetKeyDown(KeyCode.Space))
			theCharacterJump.Jump();

		if (Input.GetKeyDown (KeyCode.LeftControl))
			theCharacterCrouch.Crouch ();

//		if (Input.GetKeyUp (KeyCode.LeftControl))
//			theCharacterCrouch.UnCrouch ();
			
	}


	void FixedUpdate ()
	{

		
		if (Input.GetKey(KeyCode.D))
		{
			theCharacterMotor.RightActivation();
		}
		
		if (Input.GetKey(KeyCode.A))
		{
			theCharacterMotor.LeftActivation();
		}
			



	}

	
}