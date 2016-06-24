using UnityEngine;
using System.Collections;

public class EnemyShootAI : MonoBehaviour {

	public float startShootingDistance = 15;
	private float targetDistance;

	private CharacterShot theCharacterShot;
	private TrackPlayer theTrackPlayer;


	void Start ()
	{
		theTrackPlayer = gameObject.GetComponent<TrackPlayer> ();
		theCharacterShot = gameObject.GetComponent<CharacterShot>();

	}

	// Update is called once per frame
	void Update () 
	{
		targetDistance = theTrackPlayer.targetDistance;

		if (targetDistance < startShootingDistance)
			theCharacterShot.shot ();


	}
}
