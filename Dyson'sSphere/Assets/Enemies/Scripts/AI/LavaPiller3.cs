using UnityEngine;
using System.Collections;

public class LavaPiller3 : MonoBehaviour {

    public float LavaTimer = 1.0f;
    public Transform LavaPillerPoint4;
    public GameObject LavaPiller4;

    // Use this for initialization
    void Start()
    {
        StartCoroutine("DestroyPiller");
    }

    // Update is called once per frame
    void Update()
    {

    }

    public IEnumerator DestroyPiller()
    {
        yield return new WaitForSeconds(LavaTimer);
        Instantiate(LavaPiller4, LavaPillerPoint4.position, LavaPillerPoint4.rotation);
        yield return new WaitForSeconds(LavaTimer);
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
