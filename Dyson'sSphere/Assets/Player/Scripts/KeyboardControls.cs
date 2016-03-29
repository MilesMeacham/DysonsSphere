using UnityEngine;
using System.Collections;

public class KeyboardControls : MonoBehaviour {
	
	private CharacterMotor theCharacterMotor;
	private CharacterJump2 theCharacterJump;
	private CharacterShot theCharacterShot;
    private CharacterDrill theCharacterDrill;
	
	// Use this for initialization
	void Start () 
	{
		theCharacterMotor = gameObject.GetComponent<CharacterMotor> ();
		theCharacterJump = gameObject.GetComponent<CharacterJump2> ();
		theCharacterShot = gameObject.GetComponent<CharacterShot> ();
        theCharacterDrill = gameObject.GetComponent<CharacterDrill> ();
    }

	void Update ()
	{
		if(Input.GetKeyDown(KeyCode.F))
		{
			theCharacterDrill.shot();
		}

		if (Input.GetKeyDown(KeyCode.Space))
			theCharacterJump.Jump();
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