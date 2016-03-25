// Author: Jeremy Graham & Miles Meacham
// Description: Makes the bullet correctly curve around the surface

using UnityEngine;
using System.Collections;

// bulletMovement
// this class will curve the bullet around the surface correctly.

public class bulletMovement : MonoBehaviour
{
    public float shotVelocity;
    public Rigidbody rb;
    public CharacterMotor2 theCharacterMotor;
    public float lifeDuration = 0.5f;
    private Attractor Core;
    public float Xpos;
    public float Ypos;
    public float radius;

	public bool startedCO;
	
	public float damage = 1;
	public bool shootingRight;


    // Use this for initialization
    void Start()
    {
        rb = GetComponent<Rigidbody>();

        Core = FindObjectOfType<Attractor>();
        radius = Vector3.Distance(rb.position, Core.GetComponent<Transform>().position);

    }

    // Update is called once per frame
    void Update()
    {
        // Xpos = Core.GetComponent<Transform>().position.x + Mathf.Sin*
        Vector3 Xpointer = (Core.transform.position - transform.position).normalized;
        Xpointer.z = 0;
        float temp = Xpointer.x;
        Xpointer.x = -Xpointer.y;
        Xpointer.y = temp;


        if (shootingRight == true)
        {
            transform.position = transform.position + (Xpointer / 5);

        }
		if (shootingRight == false)
        {
            transform.position = transform.position + ((Xpointer * -1) / 5);
        }


		if(!startedCO)
       		StartCoroutine(Destroybullet());
    }

    public IEnumerator Destroybullet()
    {
		startedCO = true;
		if (theCharacterMotor.facingRight == true)
		{
			rb.velocity = transform.TransformDirection(new Vector3(shotVelocity, 0, 0));
			shootingRight = true;
		}
		if (theCharacterMotor.facingRight == false)
		{
			rb.velocity = transform.TransformDirection(new Vector3(-shotVelocity, 0, 0));
			shootingRight = false;
		}
        yield return new WaitForSeconds(lifeDuration);

		gameObject.SetActive (false);
		startedCO = false;
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
