// Author: Miles Meacham
// Description: Health script for all characters (This includes enemies and destructable objects)

using UnityEngine;
using UnityEngine.UI;
using System.Collections;
//temp audio
using FMODUnity;

// Character Health
// Base class for all character health

public class CharacterHealth : MonoBehaviour {

	// Set these values in the editor
	public float health = 3;
	public float maxHealth = 5;
	public float minHealth = 0;
	public float possibleMaxHealth = 10;
	//temp audio
	public StudioEventEmitter hurtSound;

	public Image healthBar;

	public bool invincible;

	// Change this to the desired time
	// Note* We can implement a pick up that increases the invincibilityTime if we want
	public float invincibilityTime = 2;

	public void Start () {

		// Set health to maxHealth when spawned
		health = maxHealth;

//		if (tag == "Enemy")
//			healthBar = transform.FindChild("EnemyCanvas").FindChild("HealthBG").FindChild("Health").GetComponent<Image>();

	}


	public void Update () {

		// Destroy object once his health hits 0
		if (health == minHealth) {
			if (tag == "Player")  						//This is all temporary for the playtest1
				Application.LoadLevel ("DeathScreen");	//We will have to rewrite this soon.
			else
				destroyObject ();
		}

	}

	// Purpose: Call this to add health from character
	// Parameters: float (healthToAdd)
	// Returns: void
	// Pre-conditions: If health is already full there will be no apparent change
	// Post-conditions: health will be added to the character
	// -----------------------------------------------------------------
	public void addHealth (float healthToAdd)
	{
		health += healthToAdd;
		if (health > maxHealth)
			health = maxHealth;

		if(healthBar != null)
			healthBar.fillAmount = (health / maxHealth);

	}
	
	// Purpose: Call this to remove health from character
	// Parameters: float (healthToRemove)
	// Returns: void
	// Pre-conditions: None
	// Post-conditions: health will be removed from the character
	// -----------------------------------------------------------------
	public void removeHealth (float healthToRemove)
	{
		// Damage the character if he is not invincible
		if (!invincible)
		{
			health -= healthToRemove;
			//temp audio
			//may cause errors in enemies without emitters and fmod events
//			hurtSound.Play ();
		}
		// If the damage is higher than the remaining life, set life equal to 0
		if (health < healthToRemove)
			health = minHealth;

		if(healthBar != null)
			healthBar.fillAmount = (health / maxHealth);
	}

	// Purpose: Call this if you want the characters maxHealth to increase
	// Parameters: float (maxHealthToAdd)
	// Returns: void
	// Pre-conditions: possibleMaxHealth must be larger than maxHealth for this to work
	// Post-conditions: maxHealth will increase
	// -----------------------------------------------------------------
	public void addMaxHealth (float maxHealthToAdd)
	{
		if(maxHealth != possibleMaxHealth)
		{
			maxHealth += maxHealthToAdd;
			health = maxHealth;
		}

		if(healthBar != null)
			healthBar.fillAmount = (health / maxHealth);
	}

	// Purpose: Call this if you want the characters maxHealth to decrease
	// Parameters: float (maxHealthToRemove)
	// Returns: void
	// Pre-conditions: No change if removing from max health will result in 0 (We don't want the player to have a max health of 0)
	// Post-conditions: maxHealth will decrease
	// -----------------------------------------------------------------
	public void removeMaxHealth (float maxHealthToRemove)
	{
		maxHealth -= maxHealthToRemove;
		if (health > maxHealth)
			health = maxHealth;

		if (maxHealth < minHealth)
			maxHealth = minHealth + 1;

		if(healthBar != null)
			healthBar.fillAmount = (health / maxHealth);
	}

	// Purpose: Set the character to false (this will not destroy the actual object, just make him inactive
	// Parameters: None
	// Returns: void
	// Pre-conditions: 
	// Post-conditions: object will be inactive
	// -----------------------------------------------------------------
	public void destroyObject()
	{

		gameObject.SetActive (false);
	}

	// Purpose: Cause character to have invincibility frames
	// Parameters: None
	// Returns: void
	// Pre-conditions: 
	// Post-conditions: character will be invicibility for a short duration
	// -----------------------------------------------------------------
	public void Invincibility()
	{
		StartCoroutine ("InvincibilityCo");
	}
	
	public IEnumerator InvincibilityCo()
	{
		invincible = true;
		yield return new WaitForSeconds(invincibilityTime);
		invincible = false;
		
	}


	
}
