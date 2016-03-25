using UnityEngine;
using System.Collections;

public class turret : MonoBehaviour {

    public float targetDistance;
    public float attackDistance;
    public float enemyLookDistance;
    public float enemyStopDistance;
    public Transform enemyShotStart;
    public Transform enemyShotStart2;
    public Transform enemyShotStart3;
    public Transform enemyShotStart4;
    public Transform enemyShotStart5;
    public Transform Target;
    public GameObject EnemyShot;
    public GameObject EnemyShot2;
    public GameObject EnemyShot3;
    public GameObject EnemyShot4;
    public GameObject EnemyShot5;
    public float nextEnemyFire;
    public float nextEnemyFireMax;
    public int shotTimer;

    // Use this for initialization
    void Start()
    {
       
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        targetDistance = Vector3.Distance(Target.position, transform.position);

        if (targetDistance < attackDistance && nextEnemyFire <= 0)
        {
            nextEnemyFire = nextEnemyFireMax;
            // nextEnemyFire = Time.deltaTime + nextEnemyFire;
            shootPlease();

            StartCoroutine("altFire");
        }
        nextEnemyFire -= Time.deltaTime;
    }


    void shootPlease()
    {
        Instantiate(EnemyShot, enemyShotStart.position, enemyShotStart.rotation);
        Instantiate(EnemyShot4, enemyShotStart4.position, enemyShotStart4.rotation);
        Instantiate(EnemyShot5, enemyShotStart5.position, enemyShotStart5.rotation);
    }

    public IEnumerator altFire()
    {
        yield return new WaitForSeconds(shotTimer);
        Instantiate(EnemyShot2, enemyShotStart2.position, enemyShotStart2.rotation);
        Instantiate(EnemyShot3, enemyShotStart3.position, enemyShotStart3.rotation);
    }
}
