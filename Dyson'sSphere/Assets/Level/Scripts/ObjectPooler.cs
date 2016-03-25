using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class ObjectPooler : MonoBehaviour {
	
	public GameObject pooledObject;
	public int pooledAmount;
	List <GameObject> pooledObjects;
	public GameObject parent;
	
	// Use this for initialization
	void Start () {
		
		parent = new GameObject ();
		parent.transform.parent = GameObject.Find ("PooledObjects").transform;
		parent.name = pooledObject.name + "s";
		// Create a new list of GameObjects
		pooledObjects = new List<GameObject> ();
		
		// Instatiate the objects into the scene but set them to inactive
		// We will call these objects later
		for (int i = 0; i < pooledAmount; i++) {
			GameObject obj = (GameObject)Instantiate(pooledObject);
			obj.transform.parent = parent.transform;
			obj.SetActive (false);
			pooledObjects.Add (obj);
		}
		
	}
	
	public GameObject GetPooledObject(){
		
		// Look through the existing Objects
		for (int i = 0; i < pooledObjects.Count; i++) {
			
			// If one of the desired objects is inactive, use that one
			if(!pooledObjects[i].activeInHierarchy) {
				
				// Return the desired object
				return pooledObjects[i];
			}
			
		}
		
		// If a desired object was not found Inactive
		// Create the object and add it to the pooledObjects list
		GameObject obj = (GameObject)Instantiate(pooledObject);
		obj.transform.parent = parent.transform;
		obj.SetActive (false);
		pooledObjects.Add (obj);
		
		return obj;
		
		
	}
	
}