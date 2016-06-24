using UnityEngine;
using System.Collections;

public class ArmorMovement : MonoBehaviour {

	public Vector3 speed = new Vector3(1.5f, 3f, 0);
	Rigidbody rb;

	void Start () 
	{
		rb = GetComponent<Rigidbody> ();
	}

	void FixedUpdate () 
	{
		// Keep character at '0' in z. We don't want the player to move in the z direction at all
		if(rb.transform.position.z != 0)
			rb.transform.position = new Vector3 (rb.transform.position.x, rb.transform.position.y, 0);



	}
		
}
