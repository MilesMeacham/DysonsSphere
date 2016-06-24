using UnityEngine;
using System.Collections;

public class enemyShotMovement : MonoBehaviour {

    public float enemyShotVelocityX;
    public float enemyShotVelocityY;
    public Rigidbody rb;
    public float lifeDuration;
    private Attractor Core;
    public float Xpos;
    public float Ypos;
    public float radius;
   

    // Use this for initialization
    void Start()
    {
        rb = GetComponent<Rigidbody>();

            rb.velocity = transform.TransformDirection(new Vector3(enemyShotVelocityX, enemyShotVelocityY, 0));
       
    }

    // Update is called once per frame
    void Update()
    {
 

        StartCoroutine("Destroybullet");
    }
    public IEnumerator Destroybullet()
    {
        yield return new WaitForSeconds(lifeDuration);
        Destroy(gameObject);
    }

        }
