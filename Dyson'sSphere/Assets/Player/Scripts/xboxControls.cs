using UnityEngine;
using System.Collections;

public class xboxControls : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () 
	{
	////////----A Button----////////
	
		if(Input.GetButtonDown("A"))
		{
			print ("A pressed");
		}

		if(Input.GetButtonUp("A"))
		{
			print ("A released");
		}

	////////----B Button----////////

		if(Input.GetButtonDown("B"))
		{
			print ("B pressed");
		}
		
		if(Input.GetButtonUp("B"))
		{
			print ("B released");
		}

	////////----X Button----////////
		
		if(Input.GetButtonDown("X"))
		{
			print ("X pressed");
		}
		
		if(Input.GetButtonUp("X"))
		{
			print ("X released");
		}

	////////----Y Button----////////
		
		if(Input.GetButtonDown("Y"))
		{
			print ("Y pressed");
		}
		
		if(Input.GetButtonUp("Y"))
		{
			print ("Y released");
		}

	////////----Left Bumper----////////
		
		if(Input.GetButtonDown("LB"))
		{
			print ("LB pressed");
		}
		
		if(Input.GetButtonUp("LB"))
		{
			print ("LB released");
		}

	////////----Right Bumper----////////
		
		if(Input.GetButtonDown("RB"))
		{
			print ("RB pressed");
		}
		
		if(Input.GetButtonUp("RB"))
		{
			print ("RB released");
		}

	////////----Left Trigger----////////
		
		if(Input.GetAxis("LT") > 0.1)
		{
			print ("LT pressed");
		}
		
		if(Input.GetAxis("LT") < 0.1)
		{
			//print ("LT released");
		}

	////////----Right Trigger----////////
		
		if(Input.GetAxis("RT") > 0.1)
		{
			print ("RT pressed");
		}
		
		if(Input.GetAxis("RT") < 0.1)
		{
			//print ("RT released");
		}

	////////----Left Joystick X-Axis/Horizontal----////////
		
		if(Input.GetAxis("LeftJoyStickX") > 0.3)
		{
			print ("Moving Right");
		}
		
		if(Input.GetAxis("LeftJoyStickX") < -0.3)
		{
			print ("Moving Left");
		}

	////////----Left Joystick Y-Axis/Vertical----////////
		
		if(Input.GetAxis("LeftJoyStickY") > 0.3)
		{
			print ("Moving Down");
		}
		
		if(Input.GetAxis("LeftJoyStickY") < -0.3)
		{
			print ("Moving Up");
		}

	////////----Right Joystick X-Axis/Horizontal----////////
		
		if(Input.GetAxis("RightJoyStickX") > 0.1)
		{
			print ("Looking Right");
		}
		
		if(Input.GetAxis("RightJoyStickX") < -0.1)
		{
			print ("Looking Left");
		}

	////////----Right Joystick Y-Axis/Vertical----////////
		
		if(Input.GetAxis("RightJoyStickY") > 0.1)
		{
			print ("Looking Down");
		}
		
		if(Input.GetAxis("RightJoyStickY") < -0.1)
		{
			print ("Looking Up");
		}

	////////----Dpad X-Axis/Horizontal----////////
		
		if(Input.GetAxis("DpadX") > 0.1)
		{
			print ("Dpad Right");
		}
		
		if(Input.GetAxis("DpadX") < -0.1)
		{
			print ("Dpad Left");
		}

	////////----Dpad Y-Axis/Vertical----////////
		
		if(Input.GetAxis("DpadY") > 0.1)
		{
			print ("Dpad Up");
		}
		
		if(Input.GetAxis("DpadY") < -0.1)
		{
			print ("Dpad Down");
		}

	////////----Back Button----////////
		
		if(Input.GetButtonDown("Back"))
		{
			print ("Back pressed");
		}
		
		if(Input.GetButtonUp("Back"))
		{
			print ("Back released");
		}

	////////----Start Button----////////
		
		if(Input.GetButtonDown("Start"))
		{
			print ("Start pressed");
		}
		
		if(Input.GetButtonUp("Start"))
		{
			print ("Start released");
		}
	}




}
