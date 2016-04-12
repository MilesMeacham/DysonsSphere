// Author: Jeremy Graham
// Description: Shoots a bullet

using UnityEngine;
using System.Collections;
//temp audio
using FMODUnity;

// CharacterShot
// Script will instatiate a bullet at the shootingPoint

public class CharacterShot : MonoBehaviour {

	public ObjectPooler bulletPools;
    public GameObject bullet;
	public Transform shootingPoint;
	private bool reloading;

	// Set this to which ever projectile you want him to shoot IN THE EDITOR, if unchanged it will shoot the basic bullets.
	public string poolName = "BulletPooler";
	public string bulletTag;				// This should either be EnemyBullet or PlayerBullet. Set it to that in the editor

    
	private float damage;
	public float baseDamage = 1;
	public float damageMultiplier = 1;
	public float damageUpgrade = 0;

	private float reloadTime;
	public float baseReloadTime = 0.5f;
	public float reloadTimeDecreaseMultiplier = 1;
	

	//temp audio
	public StudioEventEmitter shotSound;
	public StudioEventEmitter reloadSound;


	
	private ObjectPooler bulletPooler;

	//Animator
	public Animator theAnimator;
	public Transform shootingArm;

	void Start()
	{
		bulletPools = GameObject.Find (poolName).GetComponent<ObjectPooler> ();
		theAnimator = GetComponentInChildren<Animator>();
	}


    public void shot()
    {
		if (!reloading) 
		{
			// Functions to figure out reload time and damage
			reloadTime = baseReloadTime/reloadTimeDecreaseMultiplier;
			damage = (baseDamage * damageMultiplier) + damageUpgrade;



			bullet = bulletPools.GetPooledObject ();
			bullet.GetComponent<bulletMovement> ().theCharacterMotor = gameObject.GetComponent<CharacterMotor> ();
			bullet.GetComponent<bulletMovement> ().damage = damage;
			bullet.gameObject.tag = bulletTag;

			bullet.transform.position = shootingPoint.transform.position;
			bullet.SetActive (true);

			StartCoroutine ("ShotCo");

			//temp audio
			//put at end of script so that if people forget to add a sound, then the shots don't break the game
			//may cause errors in enemies without emitters and fmod events
			shotSound.Play ();
			reloadSound.Play ();
		}

    }

	IEnumerator ShotCo()
	{
		reloading = true;

		yield return new WaitForSeconds (reloadTime);

		reloading = false;
		
	}
}
