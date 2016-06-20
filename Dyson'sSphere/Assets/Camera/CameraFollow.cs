using UnityEngine;
using System.Collections;

public class CameraFollow : MonoBehaviour {

	private Transform target;
	public Vector3 cameraOffset;

	void Start ()
	{
		target = GameObject.Find ("Player");

	}

	// Update is called once per frame
	void Update () 
	{
		gameObject.transform.position = target.transform.position + cameraOffset;



	}
}
