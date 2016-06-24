using UnityEngine;
using System.Collections;

public class EnemyCharge : MonoBehaviour {


	public bool charging = false;
	public float chargeUpTime = 2;
	public int chargeSpeed = 10;
	private int tempSpeed;

	private CharacterMotor2 theCharacterMotor;
	private Animator theAnimator;

	void Start ()
	{
		theCharacterMotor = gameObject.GetComponent<CharacterMotor2> ();
		theAnimator = theCharacterMotor.theAnimator;
	}

	public void Charge()
	{
		StartCoroutine ("ChargeCO");
	}

	IEnumerator ChargeCO()
	{
		charging = true;

		float startingPoint = transform.position.x;
		bool doneCharging = false;

		// Store the speed into a variable
		tempSpeed = theCharacterMotor.speed;
		
		// Turn the speed off for the charging start up animation
		theCharacterMotor.speed = 0;

		theAnimator.SetBool ("Roar", true);
		
		yield return new WaitForSeconds (chargeUpTime);

		theCharacterMotor.speed = chargeSpeed;

		if(theCharacterMotor.movingLeft == true)
			theCharacterMotor.speed = -chargeSpeed;
		else if (theCharacterMotor.movingRight == true)
			theCharacterMotor.speed = chargeSpeed;
			
	


		yield return new WaitForSeconds (5f);
		theCharacterMotor.speed = tempSpeed;

		charging = false;
		
	}
}
