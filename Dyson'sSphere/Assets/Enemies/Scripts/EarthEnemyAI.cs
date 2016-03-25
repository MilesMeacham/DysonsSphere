using UnityEngine;
using System.Collections;

public class EarthEnemyAI : MonoBehaviour {

	public float shotDistanceMax = 12;
	public float shotDistanceMin = 7;

	public float stompDistanceMax = 10;
	public float stompDistanceMin = 0;

	public float chargeDistanceMax = 20;
	public float chargeDistanceMin = 10;

	public float lineOfSightHeight = 3f;
	public float lineOfSightDown = -2.5f;

	private float stompCooldownMax = 10;
	private float stompCooldown;
	private bool recentlyStomped;	

	private TrackPlayer theTrackPlayer;

	private Vector3 playerDistanceVector3;

	private EnemyRangedShot theEnemyRangedShot;
	private EnemyCharge theEnemyCharge;
	private EnemyStomp theEnemyStomp;


	// Use this for initialization
	void Start () 
	{
		theTrackPlayer = gameObject.GetComponent<TrackPlayer> ();
		theEnemyRangedShot = gameObject.GetComponent<EnemyRangedShot> ();
		theEnemyCharge = gameObject.GetComponent<EnemyCharge> ();
		theEnemyStomp = gameObject.GetComponent<EnemyStomp> ();
	}
	
	// Update is called once per frame
	void Update () 
	{

		// These next two if statements control the stomp cooldown. Without these, the earth enemy
		// stomps way too much.
		if (recentlyStomped)
			stompCooldown -= Time.deltaTime;

		if (stompCooldown <= 0) 
		{
			stompCooldown = stompCooldownMax;
			recentlyStomped = false;
		}

		
		if (!theEnemyCharge.charging && !theEnemyRangedShot.shooting && !theEnemyStomp.stomping) 
		{
			playerDistanceVector3 = theTrackPlayer.frontOrBack;

			if (playerDistanceVector3.y < lineOfSightHeight && playerDistanceVector3.y > lineOfSightDown)
			if (playerDistanceVector3.x < shotDistanceMax && playerDistanceVector3.x > shotDistanceMin) 
				theEnemyCharge.Charge();
		
			if (playerDistanceVector3.x < stompDistanceMax && playerDistanceVector3.x > stompDistanceMin && !recentlyStomped)
			{
				theEnemyStomp.Stomp();
				recentlyStomped = true;
			}

			if (playerDistanceVector3.x < chargeDistanceMax && playerDistanceVector3.x > chargeDistanceMin) 
				theEnemyRangedShot.RangedShot();
		}

	}

}
