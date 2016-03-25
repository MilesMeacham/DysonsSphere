using UnityEngine;
using System.Collections;

public class Attractor : MonoBehaviour {
	
	public float gravity = -15;
	public float rotationSpeed = 5;
	
	void Update() {
		//PlanetRotation ();
	}
	
	void PlanetRotation() {
		transform.Rotate(new Vector3 (GetComponent<Transform>().rotation.x, GetComponent<Transform>().rotation.y, GetComponent<Transform>().rotation.z + rotationSpeed) * Time.deltaTime);
		
		//GetComponent<Transform> ().rotation = Quaternion.Euler(GetComponent<Transform>().rotation.x, GetComponent<Transform>().rotation.y, GetComponent<Transform>().rotation.z + rotationSpeed);
		
	}
	
	public void Attract(Transform body) {
		
		Vector3 gravityUp = (body.position - transform.position).normalized;
		Vector3 bodyUp = body.up;
		
		//body.rigidbody.Addforce (gravityUp * gravity);
		body.GetComponent<Rigidbody> ().AddForce (gravityUp * gravity);
		
		
		
		
		Quaternion targetRotation = Quaternion.FromToRotation (bodyUp, gravityUp) * body.rotation;
		body.rotation = Quaternion.Slerp (body.rotation, targetRotation, 5 * Time.deltaTime);
	}
	
	
	
	void OnTriggerEnter (Collider col){
		col.transform.parent = gameObject.transform;
	}
	
	void OnTriggerExit (Collider col){
		col.transform.parent = null;
	}
	
	
	
}