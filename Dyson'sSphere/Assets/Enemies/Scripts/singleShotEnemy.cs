using UnityEngine;
using System.Collections;

public class singleShotEnemy : MonoBehaviour {

    public float targetDistance;
    public float attackDistance;
    public float enemyLookDistance;
    public Transform enemyShotStart;
    public Transform Target;
    public GameObject EnemyShot;
    public float nextEnemyFire;
    public float nextEnemyFireMax;

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

        }
        nextEnemyFire -= Time.deltaTime;
    }


    void shootPlease()
    {
        Instantiate(EnemyShot, enemyShotStart.position, enemyShotStart.rotation);
    }


}
