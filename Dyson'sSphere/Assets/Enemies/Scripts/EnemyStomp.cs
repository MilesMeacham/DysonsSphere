using UnityEngine;
using System.Collections;

public class EnemyStomp : MonoBehaviour {

	public bool stomping;
	private bool stunned;

	private int tempSpeed;
	
	public GroundCheck thePlayerGrounded;
	public CharacterMotor2 thePlayerCharacterMotor;
	public CharacterMotor2 theEnemyCharacterMotor;

	// The stun duration in seconds
	public float stunDuration = 1f;

	public float preShotAnimationTime = 1;
	public float postShotCoolDownTime = 3;

	void Start()
	{

		theEnemyCharacterMotor = gameObject.GetComponent<CharacterMotor2> ();
		thePlayerCharacterMotor = GameObject.Find ("Player").GetComponent<CharacterMotor2> ();


		//Using "ThePlayerCharacterMotor" to find this to avoid having to search through everything again.
		thePlayerGrounded = thePlayerCharacterMotor.GetComponentInChildren<GroundCheck> (); 		
	}

	public void Stomp()
	{
		StartCoroutine ("StompCO");
	}

	IEnumerator StompCO()
	{
		stomping = true;

		theEnemyCharacterMotor.enabled = false;
		
		yield return new WaitForSeconds (preShotAnimationTime);

		// If the player is ground then he will get stunned
		if (thePlayerGrounded.grounded == true) 
		{
			// Set a bool to true so that I know to set the character speed back to normal
			stunned = true;

			// Store the speed into a variable
			tempSpeed = thePlayerCharacterMotor.speed;
		
			// Turn the speed off for the charging start up animation
			thePlayerCharacterMotor.speed = 0;

			print ("Stomp");
		}

		// Stun duration
		yield return new WaitForSeconds (stunDuration);

		if(stunned)
			thePlayerCharacterMotor.speed = tempSpeed;
		
		yield return new WaitForSeconds (postShotCoolDownTime);

		theEnemyCharacterMotor.enabled = true;

		stunned = false;
		stomping = false;
		
	}

}
