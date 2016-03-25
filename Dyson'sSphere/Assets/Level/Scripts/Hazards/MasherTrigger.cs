using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class MasherTrigger : MonoBehaviour {

	public float masherSpeed = 2;
	public Transform[] masherDestinations;


	IEnumerator Activate()
	{
		yield return new WaitForSeconds (2);

		while (Vector3.Distance (transform.position, masherDestinations [0].position) > 0.01f)
		{
			transform.position = Vector3.Lerp (transform.position, masherDestinations [0].position, masherSpeed * Time.deltaTime);

			yield return null;
		}

		StartCoroutine (ReturnToStart ());
	}

	IEnumerator ReturnToStart()
	{
		yield return new WaitForSeconds (2);

		while (Vector3.Distance (transform.position, masherDestinations [1].position) > 0.01f) {
			transform.position = Vector3.Lerp (transform.position, masherDestinations [1].position, masherSpeed * Time.deltaTime);
			
			yield return null;
		}
	}

	void OnTriggerEnter (Collider collider)
	{
		if (collider.gameObject.tag == "Player")
			StartCoroutine (Activate());
	}
}
