using UnityEngine;
using System.Collections;

public class xboxControls : MonoBehaviour {

	private CharacterMotor theCharacterMotor;
	private CharacterJump2 theCharacterJump;
	private CharacterShot theCharacterShot;
	private PauseMenu thePauseMenu;
	private CharacterCrouch theCharacterCrouch;

	void Start () 
	{
		theCharacterMotor = gameObject.GetComponent<CharacterMotor> ();
		theCharacterJump = gameObject.GetComponent<CharacterJump2> ();
		theCharacterShot = gameObject.GetComponent<CharacterShot> ();
		thePauseMenu = FindObjectOfType<PauseMenu> ();
		theCharacterCrouch = gameObject.GetComponent<CharacterCrouch> ();
	}


	void Update () 
	{
	////////----A Button----////////
	
		if(Input.GetButtonDown("A"))
			theCharacterJump.Jump();

		if(Input.GetButtonUp("A"))
			print ("A released");

	////////----B Button----////////

		if(Input.GetButtonDown("B"))
			print ("B pressed");
		
		if(Input.GetButtonUp("B"))
			print ("B released");

	////////----X Button----////////
		
		if(Input.GetButtonDown("X"))
			theCharacterShot.shot();
		
		if(Input.GetButtonUp("X"))
			print ("X released");

	////////----Y Button----////////
		
		if(Input.GetButtonDown("Y"))
			print ("Y pressed");
		
		if(Input.GetButtonUp("Y"))
			print ("Y released");

	////////----Left Bumper----////////
		
		if(Input.GetButtonDown("LB"))
			print ("LB pressed");
		
		if(Input.GetButtonUp("LB"))
			print ("LB released");

	////////----Right Bumper----////////
		
		if(Input.GetButtonDown("RB"))
			print ("RB pressed");
		
		if(Input.GetButtonUp("RB"))
			print ("RB released");

	////////----Left Trigger----////////
		
		if(Input.GetAxis("LT") > 0.1)
			theCharacterMotor.LeftActivation();

	////////----Right Trigger----////////
		
		if(Input.GetAxis("RT") > 0.1)
			theCharacterShot.shot();

	////////----Back Button----////////
		
		if(Input.GetButtonDown("Back"))
			print ("Back pressed");
		
		if(Input.GetButtonUp("Back"))
			print ("Back released");

	////////----Start Button----////////
		
		if(Input.GetButtonDown("Start"))
			thePauseMenu.Pause();
		
		if(Input.GetButtonUp("Start"))
			print ("Start released");

	////////----Left Analogue Press Button----////////

		if (Input.GetButtonDown ("LeftAnaloguePress"))
			theCharacterCrouch.Crouch ();

//		if (Input.GetButtonUp ("LeftAnaloguePress"))
//			theCharacterCrouch.UnCrouch ();


	}


	// You want anything related to Movement (Walking) to be in FixedUpdate now due the the Motor
	void FixedUpdate()
	{
		
		////////----Left Joystick X-Axis/Horizontal----////////
		
		if (Input.GetAxis ("HorizontalXbox") > 0.1) 
		{
			print (Input.GetAxis ("HorizontalXbox"));
			theCharacterMotor.RightActivation ();
		}

		if(Input.GetAxis("HorizontalXbox") < -0.1)
			theCharacterMotor.LeftActivation();

		////////----Left Joystick Y-Axis/Vertical----////////

		if(Input.GetAxis("LeftJoyStickY") > 0.3)
			print ("Moving Down");
		
		if(Input.GetAxis("LeftJoyStickY") < -0.3)
			print ("Moving Up");

		////////----Right Joystick X-Axis/Horizontal----////////

		if(Input.GetAxis("RightJoyStickX") > 0.1)
			print ("Looking Right");
		
		if(Input.GetAxis("RightJoyStickX") < -0.1)
			print ("Looking Left");

		////////----Right Joystick Y-Axis/Vertical----////////
		
		if(Input.GetAxis("RightJoyStickY") > 0.1)
			print ("Looking Down");
		
		if(Input.GetAxis("RightJoyStickY") < -0.1)
			print ("Looking Up");
		/*
*/
		////////----Dpad X-Axis/Horizontal----////////
		
		if(Input.GetAxis("DpadX") > 0.1)
			print ("Dpad Right");
		
		if(Input.GetAxis("DpadX") < -0.1)
			theCharacterMotor.LeftActivation();
		
		////////----Dpad Y-Axis/Vertical----////////
		
		if(Input.GetAxis("DpadY") > 0.1)
			print ("Dpad Up");
		
		if(Input.GetAxis("DpadY") < -0.1)
			print ("Dpad Down");

	}



}
