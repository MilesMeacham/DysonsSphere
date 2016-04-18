using UnityEngine;
using System.Collections;

public class Destructable : MonoBehaviour {


	public float durability = 30f;

	public Mesh[] models;
	public float[] myInts;

	private float length;
	private float change;

	private GameObject mineralToDrop;
	public ObjectPooler mineralPool;
	public int NumberOfMineralsToDrop;

	void Start()
	{
		length = models.Length;

		// This will get how often the model needs to change
		change = durability / length;
		float prev = 0;



		for(int i = 0; i < length; i++)
		{
			myInts [i] = prev + change;

			prev = myInts [i];
		}
	}

	public void RemoveHit (int hit)
	{
		durability -= hit;

		int i = 0;

		if (durability == 0) 
		{
			gameObject.SetActive (false);
			return;
		}

		// If there is no remainder it means the model needs to change
		if (durability % change == 0) 
		{
			while (i < models.Length) 
			{
				if (myInts [i] >= durability) 
				{
					SpawnMinerals ();
					GetComponent<MeshFilter> ().mesh = models [i];
					return;
				}
				i++;
			}
		}

	}

	void SpawnMinerals()
	{
		for (int i = 0; i < NumberOfMineralsToDrop; i++) 
		{
			mineralToDrop = mineralPool.GetPooledObject ();
			mineralToDrop.GetComponent<MineralGravity> ().moved = false;
			mineralToDrop.GetComponent<MineralGravity> ().GetComponent<CharacterGravity> ().enabled = true;

			mineralToDrop.transform.position = new Vector3 (gameObject.transform.position.x, gameObject.transform.position.y, gameObject.transform.position.z);
			mineralToDrop.SetActive (true);
			mineralToDrop.GetComponent<MineralGravity> ().MineralMovement ();
		}
	}


}
