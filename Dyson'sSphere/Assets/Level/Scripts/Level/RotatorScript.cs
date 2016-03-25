using UnityEngine;
using System.Collections;

public class RotatorScript : MonoBehaviour {

	public float rotateXvalue;
	public float rotateYvalue;
	public float rotateZvalue;
	
	// Update is called once per frame
	void Update () 
	{
		transform.Rotate (new Vector3 (rotateXvalue, rotateYvalue, rotateZvalue) * Time.deltaTime);
	}
}
