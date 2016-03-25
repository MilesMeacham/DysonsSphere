//Author: Trevor Petersen
//Description: A script that translates information from the enemy motor into commands that can be sent to mecanim

using UnityEngine;
using System.Collections;

public class enemyAnimation : MonoBehaviour {

	Animator anim;

	private CharacterMotor2 theCharacterMotorScript;
	private EnemyCharge theEnemyChargeScript;
	private EnemyShootAI theEnemyShootAIScript;
	private enemyShootingLR theEnemyShootingLRScript;
	private PaceBetweenWalls thePaceBetweenWallsScript;
	private singleShotEnemy theSingleShotEnemyScript;
	private turret theTurretScript;
	private CharacterShot theCharacterShotScript;
	private EnemyStomp theEnemyStompScript;



	void Start () 
	{
		//This will get the Animator
		anim = gameObject.GetComponent<Animator>();

		//These will get the Scripts
		theCharacterMotorScript = gameObject.GetComponent<CharacterMotor2>();
		theEnemyChargeScript = gameObject.GetComponent<EnemyCharge>();
		theEnemyShootAIScript = gameObject.GetComponent<EnemyShootAI>();
		theEnemyShootingLRScript = gameObject.GetComponent<enemyShootingLR>();
		thePaceBetweenWallsScript = gameObject.GetComponent<PaceBetweenWalls>();
		theSingleShotEnemyScript = gameObject.GetComponent<singleShotEnemy>();
		theTurretScript = gameObject.GetComponent<turret>();
		theCharacterShotScript = gameObject.GetComponent<CharacterShot>();



	}
	

	void Update () 
	{
		//Plays animation when enemy is idle
		if(theCharacterMotorScript.movingLeft == false && theCharacterMotorScript.movingRight == false)
		{
			anim.SetBool("IsMoving", false);
		}


		//Plays animation when enemy is moving/walking
		if(theCharacterMotorScript.movingLeft == true || theCharacterMotorScript.movingRight == true)
			{
				anim.SetBool("IsMoving", true);
			}

		//Plays animation when enemy is charging
		if(theEnemyChargeScript.charging == true)
		{
			anim.SetBool("Charging", true);
		}
		else
		{
			anim.SetBool("Charging", false);
		}


		//Plays animation when enemy is shooting 
			//This one needs to be discussed (EnemyShootAI, singleShotEnemy, and turret scripts)

	

	}
}


//The following lines of code will cause the animation to play only once: (Note that this can also be done without code by unchecking the Loop Time box in the inspector of the animation in question)
//animation["AnimationName"].wrapMode = WrapMode.Once;
//animation.Play("AnimationName");

//The following can change a bool used in mecanim:
//anim.SetBool("BoolName", true);
//anim.SetBool("BoolName", false);

//The following can change the value of a float in mecanim:
//anim.SetFloat("FloatNamne", value);
