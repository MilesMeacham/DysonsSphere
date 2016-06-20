using UnityEngine;
using System.Collections;

public class CameraFollow : MonoBehaviour {

	private Transform target;

	void Start ()
	{
		target = GameObject.Find ("Player").GetComponent<Transform>();

	}

	// Update is called once per frame
	void Update () 
	{
		gameObject.transform.localPosition = target.transform.position;
		gameObject.transform.rotation = target.transform.rotation;



	}
}
