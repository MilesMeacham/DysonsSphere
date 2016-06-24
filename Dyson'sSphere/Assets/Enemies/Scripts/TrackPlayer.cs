// Author: Jeremy Graham & Miles Meacham
// Description: Tracks how far away the player is from this gameobject

using UnityEngine;
using System.Collections;

public class TrackPlayer : MonoBehaviour {

	public float targetDistance;
	public CharacterMotor2 theCharacterMotor;

	// This will give you a vector3 of where the target is in reference to what way you are looking
	// **Positive x numbers are in front of you
	public Vector3 frontOrBack;
	public Transform Target;

	public void Start()
	{
		theCharacterMotor = gameObject.GetComponent<CharacterMotor2> ();
		Target = GameObject.Find ("Player").transform;
	}

	void FixedUpdate()
	{
		targetDistance = Vector3.Distance(Target.position, transform.position);
		frontOrBack = transform.InverseTransformPoint (Target.position);
	}
}
