using UnityEngine;
using System.Collections;

public class MineralGravity : MonoBehaviour {

	private Vector3 stopV3 = new Vector3(0, 0, 0);

	public Rigidbody rb;
	public float verticalForce;
	public float horizontalForce;

	public bool moved = false;

	public void MineralMovement ()
	{
		moved = true;

		verticalForce = Random.Range (150f, 350f);
		horizontalForce = Random.Range (-100f, 100f);

		rb.AddForce (rb.position + transform.TransformDirection(Vector3.up * verticalForce));
		rb.AddForce (rb.position + transform.TransformDirection(Vector3.left * horizontalForce));

	}

	void OnTriggerEnter (Collider other)
	{

		if (other.gameObject.layer == 8) 
		{
			GetComponent<Rigidbody> ().velocity = stopV3;
			transform.parent = other.gameObject.transform.parent;
			GetComponent<CharacterGravity> ().enabled = false;
		}

	}

}
