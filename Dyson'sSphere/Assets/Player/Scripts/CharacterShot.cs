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

	// Set this to which ever projectile you want him to shoot, if unchanged it will shoot the basic bullets.
	public string poolName = "BulletPooler";

    public Transform shootingPoint;
	public float damage = 1;
	public float reloadTime = 0.5f;
	public bool reloading;
    public DrillUpgrades DrillUPG;

	//temp audio
	public StudioEventEmitter shotSound;
	public StudioEventEmitter reloadSound;

	// This should either be EnemyBullet or PlayerBullet. Set it to that in the editor
	public string bulletTag;
	
	private ObjectPooler bulletPooler;

	void Start()
	{
		DrillUPG = GetComponent<DrillUpgrades>();
		bulletPools = GameObject.Find (poolName).GetComponent<ObjectPooler> ();
	}


    public void shot()
    {
		if (!reloading) 
		{
			bullet = bulletPools.GetPooledObject ();
			bullet.GetComponent<bulletMovement> ().theCharacterMotor = gameObject.GetComponent<CharacterMotor2> ();
			bullet.GetComponent<bulletMovement> ().damage = damage;
			bullet.gameObject.tag = bulletTag;

			bullet.transform.position = shootingPoint.transform.position;
			bullet.SetActive (true);

			//Instantiate (bullet, shootingPoint.position, shootingPoint.rotation);

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
