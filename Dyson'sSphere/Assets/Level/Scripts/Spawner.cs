using UnityEngine;
using System.Collections;

public class Spawner : MonoBehaviour {



	public GameObject EnemyToSpawn;
	public ObjectPooler EnemyPool;
	public int amountToSpawn;
	public int spawnDelay;
	private float countdown;
	private float countdownIncrement = 0.1f;

	public Transform SpawnLocation;

	public bool spawn = false;




	void FixedUpdate()
	{
		if (spawn)
			SpawnEnemy ();

	}


	void SpawnEnemy()
	{
		if (amountToSpawn > 0) 
		{
			if (countdown <= 0)
				countdown = spawnDelay;

			countdown -= countdownIncrement;

			if (countdown <= 0) 
			{
				EnemyToSpawn = EnemyPool.GetPooledObject ();

				EnemyToSpawn.transform.position = SpawnLocation.transform.position;
				EnemyToSpawn.SetActive (true);

				amountToSpawn -= 1;

			}
		}
	}

}
