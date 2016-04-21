using UnityEngine;
using System.Collections;
using System.Collections.Generic;


public class instantiate : MonoBehaviour {

	// Use this for initialization
	void Start () {
		Object[] genericObject = Resources.LoadAll("GO",typeof(GameObject));
		List<GameObject> Gos = new List<GameObject>();

		foreach(var obj in genericObject)
			Gos.Add(obj as GameObject);

	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
