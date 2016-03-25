// Author: Miles Meacham
// Description: Detect any damage given to the player. Passes this info to the health script
// *NOTE* There MUST be a "CharacterHealth" script attached to this gameobject

using UnityEngine;
using System.Collections;

// Character Health
// Base class for all character health

public class TakeDamage : MonoBehaviour {


	private CharacterHealth theCharacterHealth;

    public ChestUpgrades ChestUPG;

	private Vector3 HazardKnockback;

	public float LavaKnockback = 10.0f;

	// Customize these in the editor according to the character they are attached to
	// Each will make the character immune to receiving that certain type of damage
	public bool immuneToPlayerDamage;
	public bool immuneToEnemyDamage;
	public bool immuneToHazardDamage;

	// Use this for initialization
	public void Start () 
	{
		theCharacterHealth = GetComponent<CharacterHealth> ();
	}

	// These are for all NON-trigger damage dealing objects
	void OnCollisionEnter (Collision collider)
	{

		// if character is not immune to enemy damage, he will detect these
		if (!immuneToEnemyDamage) 
		{
			// Touching enemy hurts you
			if (collider.transform.tag == "Enemy")
			{
				theCharacterHealth.removeHealth(1f);
				theCharacterHealth.Invincibility();
			}
		}
		
		// if character is not immune to player damage, he will detect these
		if (!immuneToPlayerDamage) 
		{
            {
                // Touching player hurts you
                if (collider.gameObject.tag == "Player" && ChestUPG.SpikeArmor == true)
                {
                    theCharacterHealth.removeHealth(1f);
                    theCharacterHealth.Invincibility();
                }
            }
        }
		
		// if character is not immune to hazard damage, he will detect these
		if (!immuneToHazardDamage) 
		{
			if (collider.gameObject.tag == "Spikes")
			{
				theCharacterHealth.removeHealth (1f);
				theCharacterHealth.Invincibility ();
			}


			if (collider.gameObject.tag == "Lava")
			{
				theCharacterHealth.removeHealth (2f);
				theCharacterHealth.Invincibility ();
				HazardKnockback = new Vector3 (0,LavaKnockback,0);
				GetComponent<Rigidbody>().velocity = transform.TransformDirection(HazardKnockback);
			}

			if (collider.gameObject.tag == "Masher")
			{
				theCharacterHealth.removeHealth (999f);
				theCharacterHealth.Invincibility();
			}
		}

	}

	// These are for all trigger damage dealing objects
	void OnTriggerEnter (Collider collider)
	{
		// if character is not immune to enemy damage, he will detect these
		if (!immuneToEnemyDamage) 
		{
			if (collider.gameObject.tag == "EnemyBullet") {
				theCharacterHealth.removeHealth (collider.GetComponent<bulletMovement> ().damage);
				theCharacterHealth.Invincibility ();
			}
		}

		// if character is not immune to player damage, he will detect these
		if (!immuneToPlayerDamage) 
		{
			if (collider.gameObject.tag == "PlayerBullet") {
				theCharacterHealth.removeHealth (collider.GetComponent<bulletMovement> ().damage);
				theCharacterHealth.Invincibility ();
			}
		}

		// if character is not immune to hazard damage, he will detect these
		if (!immuneToHazardDamage) 
		{
			if (collider.gameObject.tag == "Pit") {
				theCharacterHealth.removeHealth (collider.GetComponent<PitHazard> ().damage);
				theCharacterHealth.Invincibility ();
			}
		}

		
	}

}
