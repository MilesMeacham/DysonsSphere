using UnityEngine;
using System.Collections;

public class HeadStomp : MonoBehaviour {

	private CharacterHealth theCharacterHealth;

	public Vector3 bounceUp = new Vector3 (0, 10.0f, 0);

	void Start()
	{
		theCharacterHealth = GetComponentInParent<CharacterHealth> ();
	}


	void OnTriggerEnter (Collider collider)
	{
		if (collider.gameObject.layer == 9) 
		{
			collider.GetComponent<Rigidbody>().velocity = transform.TransformDirection(bounceUp);
			GetComponentInParent<BoxCollider> ().enabled = false;
			theCharacterHealth.removeHealth (99);


		}
	}

}
