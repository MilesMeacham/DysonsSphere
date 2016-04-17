using UnityEngine;
using System.Collections;

public class Destructable : MonoBehaviour {


	public float durability = 30f;

	public Mesh[] models;
	public float[] myInts;

	private float length;
	private float change;

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
					GetComponent<MeshFilter> ().mesh = models [i];
					return;
				}
				i++;
			}
		}

	}


}
