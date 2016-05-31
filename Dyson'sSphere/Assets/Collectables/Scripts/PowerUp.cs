// Author: Miles Meacham
// Description: Allows you to upgrade the player

using UnityEngine;
using System.Collections;

// PowerUp
// This should be attached to the object to be picked up. You then select the boxes in the inspector that you wish to upgrade
// If you want to have multiple upgrades for the same object you can, just select multiple boces. If you want to have multiple 
// upgrades with different ammounts, just attach two or more of these scripts to the object to be picked up. If you do this
// only print one of the messages.

public class PowerUp : MonoBehaviour {

	public string powerUpName = "default";
	public string powerUpMessage = "default";

	public float upgradeAmount;

	public bool damageMultiplier;
	public bool damageUp;
	public bool reloadTimeDivider;
	public bool health;
	public bool maxHealth;
	public bool invincibilityTime;
	public bool speedMultiplier;
	public bool speedUp;
	public bool jumpForce;
	public bool miningDelay;     	//Divides by the upgrade ammount
	public bool miningDamage;

	public bool printMessage;

	void SendPowerUp(GameObject GOToPowerUp)
	{
		
		if (damageMultiplier)
			GOToPowerUp.GetComponent<CharacterShot> ().damageMultiplier += upgradeAmount;

		if(damageUp)
			GOToPowerUp.GetComponent<CharacterShot> ().damageUpgrade += upgradeAmount;

		if(reloadTimeDivider)
			GOToPowerUp.GetComponent<CharacterShot> ().reloadTimeDivider += upgradeAmount;

		if (health)
			GOToPowerUp.GetComponent<CharacterHealth> ().addHealth (upgradeAmount);

		if(maxHealth)
			GOToPowerUp.GetComponent<CharacterHealth> ().addMaxHealth(upgradeAmount);

		if(invincibilityTime)
			GOToPowerUp.GetComponent<CharacterHealth> ().invincibilityTime += upgradeAmount;

		if(speedMultiplier)
			GOToPowerUp.GetComponent<CharacterMotor> ().speedMultiplier += upgradeAmount;

		if(speedUp)
			GOToPowerUp.GetComponent<CharacterMotor> ().speedUpgrade += upgradeAmount;

		if(jumpForce)
			GOToPowerUp.GetComponent<CharacterMotor> ().jumpForce += upgradeAmount;

		if (miningDelay)
			GOToPowerUp.GetComponent<KeyboardControls>().theMiningCollider.AdjustMiningDelay (upgradeAmount);

		if(miningDamage)
			GOToPowerUp.GetComponent<KeyboardControls>().theMiningCollider.IncreaseMiningDamage (upgradeAmount);

		if(printMessage)
			PrintMessage ();

		gameObject.SetActive (false);
	}

	void PrintMessage()
	{

		print (powerUpName);
		print (powerUpMessage);



	}

	void OnTriggerEnter(Collider collider)
	{

		if (collider.gameObject.layer == 9)
			SendPowerUp (collider.gameObject);
	}



}
