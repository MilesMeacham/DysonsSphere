using UnityEngine;
using System.Collections;

public class Rotator : MonoBehaviour {

	public float rotation = 15f;

	// Update is called once per frame
	void Update () {
		transform.Rotate (new Vector3 (0, 0, rotation) * Time.deltaTime);
	}
}
