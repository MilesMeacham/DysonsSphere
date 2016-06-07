// Author: Jeremy Graham
// Description: Shoots a bullet

using UnityEngine;
using System.Collections;

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
	public float reloadTimeDivider = 1;

	
	private ObjectPooler bulletPooler;

	//Animator
	public Animator theAnimator;
	public Transform shootingArm;
//	public Animation anim;

	void Start()
	{
		bulletPools = GameObject.Find (poolName).GetComponent<ObjectPooler> ();
		theAnimator = GetComponentInChildren<Animator>();

//		anim = theAnimator.GetComponent<Animation> ();

//		anim ["Attack"].layer = 5;
//		anim ["Attack"].AddMixingTransform (shootingArm);
	}


    public void shot()
    {
		if (!reloading) 
		{
			// Functions to figure out reload time and damage
			reloadTime = baseReloadTime/reloadTimeDivider;
			damage = (baseDamage * damageMultiplier) + damageUpgrade;

			theAnimator.SetTrigger ("Shot");


			bullet = bulletPools.GetPooledObject ();
			bullet.GetComponent<BulletMovement> ().theCharacterMotor = gameObject.GetComponent<CharacterMotor> ();
			bullet.GetComponent<BulletMovement> ().damage = damage;
			bullet.gameObject.tag = bulletTag;


			bullet.transform.rotation = shootingPoint.transform.rotation;
			bullet.transform.position = shootingPoint.transform.position;
			bullet.SetActive (true);


			StartCoroutine ("ShotCo");
		}

    }

	IEnumerator ShotCo()
	{
		reloading = true;

		yield return new WaitForSeconds (reloadTime);

		reloading = false;
		
	}
}
