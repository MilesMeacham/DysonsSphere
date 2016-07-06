using UnityEngine;
using System.Collections;

public class RollingAttack : MonoBehaviour {

	public CharacterMotor CM;
	public float PlayerDistance;
	public TrackPlayer TP;
	public float RollAttack = 3;
	public GameObject BoomBall;
	public Transform Center;
	public float WaitToExplode = 2f;

	IEnumerator RockNRoll(){
		CM.baseSpeed = 10;
		yield return new WaitForSeconds(WaitToExplode);
		Instantiate (BoomBall, Center.position, Center.rotation);
		Destroy(gameObject); 
	}

	// Use this for initialization
	void Start () {
		CM = GetComponent<CharacterMotor> ();
		TP = GetComponent<TrackPlayer> ();

	}
	
	// Update is called once per frame
	void Update () {
		
		PlayerDistance = TP.targetDistance;


		if (PlayerDistance < RollAttack)
		{
			StartCoroutine(RockNRoll());
		}
	}
}
