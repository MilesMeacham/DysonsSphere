using UnityEngine;
using System.Collections;

public class FlyingEnemyMovement : MonoBehaviour {

	
	public Rigidbody rb;
	
	float distance;
	public Transform target;
	
	public float lookAtDistance = 30f;
	public float followDistance = 25f;
	public float nearAttackDistance = 3f;

	public float speed = 4;

	public Vector3 relativePoint;
	
	
	void Start () {
		target = GameObject.Find ("Player").transform;
		rb = GetComponent<Rigidbody> ();
	}
	
	void Update () {
		
		EnemyFlyMovement ();
		
		
	}
	
	void EnemyFlyMovement () {
		
		relativePoint = transform.InverseTransformPoint(target.position);
		
		if(rb.transform.position.z != 0)
			rb.transform.position = new Vector3 (rb.transform.position.x, rb.transform.position.y, 0);
		
		//turn towards the player
		if (relativePoint.x < -0.2)
			transform.Rotate (0, 180, 0);
		
		
		
		distance = Vector3.Distance(transform.position,target.position);
		
		if (distance < followDistance) {
			transform.LookAt(target);
			rb.velocity = transform.TransformDirection (new Vector3 (0, 0, speed));
			
		}
		
		if (distance > followDistance) {
			rb.velocity = transform.TransformDirection (new Vector3 (speed, 0, 0));
		}
		
	}
	
	
	
}
		

