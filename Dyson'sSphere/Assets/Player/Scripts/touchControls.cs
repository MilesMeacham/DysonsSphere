using UnityEngine;
using System.Collections;

public class TouchControls : MonoBehaviour {

	private CharacterMotor theCharacterMotor;
	private CharacterJump theCharacterJump;

	private bool movingLeft = false;
	private bool movingRight = false;

	void Start () 
	{
		theCharacterMotor = gameObject.GetComponent<CharacterMotor> ();
		theCharacterJump = gameObject.GetComponent<CharacterJump> ();
	}

	void Update ()
	{
		//if (movingLeft == true)
			//theCharacterMotor.HorizontalVelocity ();

		//if (movingRight)
			//theCharacterMotor.HorizontalVelocity ();

	}

	public void LeftArrow()
	{
		movingLeft = true;

		if (theCharacterMotor.facingRight)
			theCharacterMotor.Flip();
		

	}
	
	public void RightArrow()
	{
		movingRight = true;

		if (!theCharacterMotor.facingRight)
			theCharacterMotor.Flip ();


	}

	public void UnpressedArrow()
	{
		movingLeft = false;
		movingRight = false;

	}
	
	public void TouchJump()
	{
		theCharacterJump.Jump ();
	}
/*	
	public void TouchShoot()
	{
		theCharacterMotor.Attack ();
	}
*/
}
