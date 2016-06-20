using UnityEngine;
using System.Collections;

public class ArmorPickUps : MonoBehaviour {

	// These should NOT be null to start
	public GameObject head;
	public GameObject body;
	public GameObject feet;
	public GameObject mainArm;
	public GameObject altArm;

	public Transform dropPoint;

	public Transform armorParent;

	void Start () 
	{
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
		Drop (head);

		head = newHead;

		head.transform.parent = armorParent;

	}

	public void ChangeBody(GameObject newBody)
	{
		Drop (body);

		body = newBody;

		body.transform.parent = armorParent;

	}

	public void ChangeFeet(GameObject newFeet)
	{
		Drop (feet);

		feet = newFeet;

		feet.transform.parent = armorParent;
	}

	public void ChangeAltArm(GameObject newArm)
	{
		Drop (mainArm);

		mainArm = newArm;

		mainArm.transform.parent = armorParent;
	}

	public void ChangeMainArm(GameObject newAltArm)
	{
		Drop (altArm);

		altArm = newAltArm;

		altArm.transform.parent = armorParent;
	}

	public void Drop(GameObject itemToDrop)
	{
		itemToDrop.GetComponent<PowerUp> ().RemovePowerUp (this.gameObject);


		itemToDrop.transform.position = dropPoint.transform.position;

		itemToDrop.transform.parent = null;

		itemToDrop.SetActive (true);
	}
}
