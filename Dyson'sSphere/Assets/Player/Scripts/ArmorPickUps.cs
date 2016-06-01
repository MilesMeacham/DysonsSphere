using UnityEngine;
using System.Collections;

public class ArmorPickUps : MonoBehaviour {

	// These should NOT be null to start
	public GameObject head;
	public GameObject body;
	public GameObject feet;

	public Transform dropPoint;

	public Transform armorParent;

	void Start () 
	{
		head.GetComponent<PowerUp> ().AddPowerUp (this.gameObject);
		body.GetComponent<PowerUp> ().AddPowerUp (this.gameObject);
		feet.GetComponent<PowerUp> ().AddPowerUp (this.gameObject);

	}
	
	public void changeHead(GameObject newHead)
	{
		drop (head);

		head = newHead;

		head.transform.parent = armorParent;

	}

	public void changeBody(GameObject newBody)
	{
		drop (body);

		body = newBody;

		body.transform.parent = armorParent;

	}

	public void changeFeet(GameObject newFeet)
	{
		drop (feet);

		feet = newFeet;

		feet.transform.parent = armorParent;
	}

	public void drop(GameObject itemToDrop)
	{
		itemToDrop.GetComponent<PowerUp> ().RemovePowerUp (this.gameObject);


		itemToDrop.transform.position = dropPoint.transform.position;

		itemToDrop.transform.parent = null;

		itemToDrop.SetActive (true);
	}
}
