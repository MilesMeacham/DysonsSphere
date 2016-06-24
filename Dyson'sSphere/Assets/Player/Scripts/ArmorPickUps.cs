using UnityEngine;
using System.Collections;

public class ArmorPickUps : MonoBehaviour {

	// These should NOT be null to start  EDIT: This can now be null but we should probably assign basic armor
	public GameObject head;
	public GameObject body;
	public GameObject feet;
	public GameObject mainArm;
	public GameObject altArm;

	public Transform dropPoint;

	public Transform armorParent;

	public Vector2 dropForce = new Vector2 (4, 5);
	private Vector2 dropForceLeft;
	private CharacterMotor theCharacterMotor;

	void Start () 
	{
		theCharacterMotor = GetComponent<CharacterMotor> ();
		dropForceLeft = new Vector2 (-dropForce.x, dropForce.y);

		if(head != null)
		head.GetComponent<PowerUp> ().AddPowerUp (this.gameObject);

		if(body != null)
		body.GetComponent<PowerUp> ().AddPowerUp (this.gameObject);

		if(feet != null)
		feet.GetComponent<PowerUp> ().AddPowerUp (this.gameObject);

		if(mainArm != null)
		mainArm.GetComponent<PowerUp> ().AddPowerUp (this.gameObject);

		if(altArm != null)
		altArm.GetComponent<PowerUp> ().AddPowerUp (this.gameObject);

	}
	
	public void ChangeHead(GameObject newHead)
	{
		if(head != null)
			Drop (head);

		head = newHead;

		head.transform.parent = armorParent;

	}

	public void ChangeBody(GameObject newBody)
	{
		if(body != null)
			Drop (body);

		body = newBody;

		body.transform.parent = armorParent;

	}

	public void ChangeFeet(GameObject newFeet)
	{
		if(feet != null)
			Drop (feet);

		feet = newFeet;

		feet.transform.parent = armorParent;
	}

	public void ChangeAltArm(GameObject newArm)
	{
		if(mainArm != null)
			Drop (mainArm);

		mainArm = newArm;

		mainArm.transform.parent = armorParent;
	}

	public void ChangeMainArm(GameObject newAltArm)
	{
		if(altArm != null)
			Drop (altArm);

		altArm = newAltArm;

		altArm.transform.parent = armorParent;
	}

	public void Drop(GameObject itemToDrop)
	{
		itemToDrop.GetComponentInChildren<PowerUp> ().RemovePowerUp (this.gameObject);


		itemToDrop.transform.position = dropPoint.transform.position;

		itemToDrop.transform.parent = null;

		Rigidbody itemRB = itemToDrop.GetComponent<Rigidbody> ();
		itemRB.isKinematic = false;

		if (theCharacterMotor.facingRight)
			itemRB.velocity = transform.TransformDirection(dropForce);
		else
			itemRB.velocity = transform.TransformDirection(dropForceLeft);

		//itemToDrop.GetComponent<ArmorMovement> ().Movement ();

		itemToDrop.SetActive (true);
	}
}
