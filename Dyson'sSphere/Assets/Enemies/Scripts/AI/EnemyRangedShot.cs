using UnityEngine;
using System.Collections;

public class EnemyRangedShot : MonoBehaviour {

	public float preShotAnimationTime = 1;
	public float postShotCoolDownTime = 3;

	private int tempSpeed;

	public bool shooting = false;
	private CharacterMotor2 theCharacterMotor;
	private CharacterShot theCharacterShot;

	// Use this for initialization
	void Start ()
	{
		theCharacterMotor = gameObject.GetComponent<CharacterMotor2> ();
		theCharacterShot = gameObject.GetComponent<CharacterShot> ();
	}

	public void RangedShot()
	{
		StartCoroutine ("RangedShotCO");
	}
	
	IEnumerator RangedShotCO()
	{
		shooting = true;

		// Store the speed into a variable
		tempSpeed = theCharacterMotor.speed;
		
		// Turn the speed off for the charging start up animation
		theCharacterMotor.speed = 0;
		
		yield return new WaitForSeconds (preShotAnimationTime);
		
		theCharacterShot.shot();

		yield return new WaitForSeconds (1f);

		theCharacterMotor.speed = tempSpeed;

		yield return new WaitForSeconds (postShotCoolDownTime);
		
		shooting = false;
		
	}

}
