// Author: Miles Meacham
// Description: Lets the level designer choose which enemies and their chance of spawning at this spawn point

using UnityEngine;
using System.Collections;
using System.Collections.Generic;

// Spawn Point script for Enemies

public class SpawnPointEnemy : MonoBehaviour {

	// Make sure all enemies are loaded into this List
	public List<GameObject> allEnemies = new List<GameObject>();

	private float[] enemyHeights; 
	
	// Make sure you load the list in this order
	public int basicEnemyChance;
	public int earthEnemyChance;
	public int waterEnemyChance;
	public int airEnemyChance;

	private int min;
	private int e1Max;
	private int e2Max;
	private int e3Max;
	private int e4Max;
	
	private int randNumber;

	// Use this for initialization
	void Start () 
	{

		//Set the length of the "enemyHeights" array to the length of the "allEnemies" list
		enemyHeights = new float[allEnemies.Count];
		
		//Find the height of the enemies so it will place them at the right height
		for (int i = 0; i < enemyHeights.Length; i++) 
		{
			if(allEnemies[i].GetComponent<BoxCollider>() != null)
				enemyHeights [i] = allEnemies[i].GetComponent<BoxCollider> ().size.y / 2;
			if(allEnemies[i].GetComponent<CapsuleCollider>() != null)
				enemyHeights [i] += allEnemies[i].GetComponent<CapsuleCollider> ().height / 2;
		}

		min = 0;
		e1Max = basicEnemyChance;
		e2Max = e1Max + earthEnemyChance;
		e3Max = e2Max + waterEnemyChance;
		e4Max = e3Max + airEnemyChance;

		randNumber = Random.Range (min + 1, e3Max);

		if (randNumber <= e1Max)
			Instantiate (allEnemies [0], new Vector3(gameObject.transform.position.x, (gameObject.transform.position.y + enemyHeights[0] - 1), gameObject.transform.position.z), gameObject.transform.rotation);
		if (randNumber <= e2Max && randNumber > e1Max)
			Instantiate (allEnemies [1], new Vector3(gameObject.transform.position.x, (gameObject.transform.position.y + enemyHeights[1] - 1), gameObject.transform.position.z), gameObject.transform.rotation);
		if (randNumber <= e3Max && randNumber > e2Max)
			Instantiate (allEnemies [2], new Vector3(gameObject.transform.position.x, (gameObject.transform.position.y + enemyHeights[2] - 1), gameObject.transform.position.z), gameObject.transform.rotation);
		if (randNumber <= e4Max && randNumber > e3Max)
			Instantiate (allEnemies [3], new Vector3(gameObject.transform.position.x, (gameObject.transform.position.y + enemyHeights[2] - 1), gameObject.transform.position.z), gameObject.transform.rotation);


		gameObject.SetActive (false);

	}

}
