using UnityEngine;
using System.Collections;

public class CharacterGravity : MonoBehaviour {
	
	public Attractor attractor;
	GameObject startPlanet;

	const string PLANET_NAME = "Planet";

	private Transform myTransform;
	
	// Use this for initialization
	void Start () {
		startPlanet = GameObject.Find (PLANET_NAME);
		attractor = startPlanet.GetComponent<Attractor>();
		GetComponent<Rigidbody> ().constraints = RigidbodyConstraints.FreezeRotation;
		GetComponent<Rigidbody> ().useGravity = false;
		myTransform = transform;
	}
	
	// Update is called once per frame
	void FixedUpdate () {
		attractor.Attract (myTransform);
	}
	
/*	public void ChangeGravity (Collider other) {
		attractor = other.gameObject.GetComponent<Attractor>();
		
		
		
	}
*/	
}
