using UnityEngine;
using System.Collections;

public class enemyShootingLR : MonoBehaviour {

    public float enemyShotVelocityX;
    public float enemyShotVelocityY;
    public Rigidbody rb;
    public float lifeDuration;
    private Attractor Core;
    public float radius;
    public float damage = 1;
    public bool shootingRight;
    public CharacterMotor2 theCharacterMotor;


    // Use this for initialization
    void Start()
    {
        Core = FindObjectOfType<Attractor>();
        radius = Vector3.Distance(rb.position, Core.GetComponent<Transform>().position);
        rb = GetComponent<Rigidbody>();
        theCharacterMotor = GetComponent<CharacterMotor2>();

        if (theCharacterMotor.movingRight==true)
        {
            rb.velocity = transform.TransformDirection(new Vector3(enemyShotVelocityX, 0, 0));
            shootingRight = true;
        }

        if (theCharacterMotor.movingLeft==true)
        {
            rb.velocity = transform.TransformDirection(new Vector3(-enemyShotVelocityX, 0, 0));
            shootingRight = false;
        }
    }

    // Update is called once per frame
    void Update()
    {
        Vector3 Xpointer = (Core.transform.position - transform.position).normalized;
        Xpointer.z = 0;
        float temp = Xpointer.x;
        Xpointer.x = -Xpointer.y;
        Xpointer.y = temp;

        {
            transform.position = transform.position + ((Xpointer * -1) / 5);
        }

        StartCoroutine("Destroybullet");
    }
    public IEnumerator Destroybullet()
    {
        yield return new WaitForSeconds(lifeDuration);
        Destroy(gameObject);
    }

    void OnCollisionEnter(Collision collider)
    {
        if (gameObject.tag == "PlayerBullet" && collider.gameObject.tag != "Player")
        {

            Destroy(gameObject);

        }
        if (gameObject.tag == "EnemyBullet" && collider.gameObject.tag != "Enemy")
            Destroy(gameObject);
    }

    // These are for all trigger damage dealing objects
    void OnTriggerEnter(Collider collider)
    {
        if (gameObject.tag == "PlayerBullet" && collider.gameObject.tag != "Player")
            Destroy(gameObject);

        if (gameObject.tag == "EnemyBullet" && collider.gameObject.tag != "Enemy")
            Destroy(gameObject);

    }
}
