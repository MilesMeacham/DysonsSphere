using UnityEngine;
using System.Collections;

public class BulletMovement : MonoBehaviour {

	public float damage;

	public float speed;
	public float verticalSpeed;
	public float duration;

	public CharacterMotor theCharacterMotor;
	private Rigidbody rb;
	private Vector3 movement;

	private bool startedCO = false;
	private bool shootingRight = true;




	void Start () 
	{
		rb = GetComponent<Rigidbody> ();
	}

	void OnEnable()
	{
		if (theCharacterMotor.facingRight == true && shootingRight != true) 
		{
			shootingRight = true;
			speed = -speed;
		}
		if (theCharacterMotor.facingRight == false && shootingRight == true) 
		{
			shootingRight = false;
			speed = -speed;
		}
		movement = new Vector3(speed, verticalSpeed, 0);

		if(!startedCO)
			StartCoroutine(Duration());
	}

	private IEnumerator Duration()
	{
		startedCO = true;


		

		yield return new WaitForSeconds (duration);

		gameObject.SetActive(false);

		startedCO = false;

	}


	void FixedUpdate () 
	{
		rb.velocity = transform.TransformDirection(new Vector3(speed, verticalSpeed, 0));
	}





	void OnCollisionEnter (Collision collider)
	{
		if (gameObject.tag == "PlayerBullet" && collider.gameObject.tag != "Player") 
		{
			gameObject.SetActive (false);
			startedCO = false;
		}
		if (gameObject.tag == "EnemyBullet" && collider.gameObject.tag != "Enemy") 
		{
			gameObject.SetActive (false);
			startedCO = false;
		}
	}

	// These are for all trigger damage dealing objects
	void OnTriggerEnter (Collider collider)
	{
		if (gameObject.tag == "PlayerBullet" && collider.gameObject.tag != "Player") 
		{
			gameObject.SetActive (false);
			startedCO = false;
		}
		if (gameObject.tag == "EnemyBullet" && collider.gameObject.tag != "Enemy") 
		{
			gameObject.SetActive (false);
			startedCO = false;
		}
	}

}
