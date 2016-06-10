using UnityEngine;
using System.Collections;

public class CharacterDrill : MonoBehaviour {


    public GameObject bullet;
    public GameObject PlasmaBullet;
    public Transform shootingPoint;
    public float damage = 1;
    public float Plasmadamage = 2;
    public float reloadTime = 0.5f;
    public float RapidReload = 0.25f;
    public bool reloading;
    public DrillUpgrades DrillUPG;

    // This should either be EnemyBullet or PlayerBullet. Set it to that in the editor
    public string bulletTag;

	private ObjectPooler bulletPooler;
	public ObjectPooler bulletPools;

	// Set this to which ever projectile you want him to shoot, if unchanged it will shoot the basic bullets.
	public string poolName = "BulletPooler";


    void Start()
    {
        DrillUPG = GetComponent<DrillUpgrades>();
		bulletPools = GameObject.Find (poolName).GetComponent<ObjectPooler> ();
    }

    public void shot()
    {
		bullet = bulletPools.GetPooledObject ();


		// Go over this with Jeremy, Can be simplyfied
        if (!reloading && DrillUPG.PlamsaDrill == false && DrillUPG.RapidDrill == false && DrillUPG.PowerDrill == false)
        {
            bullet.GetComponent<BulletMovement>().theCharacterMotor = gameObject.GetComponent<CharacterMotor>();
			bullet.GetComponent<BulletMovement>().damage = damage;
            bullet.gameObject.tag = bulletTag;

			bullet.transform.position = shootingPoint.transform.position;
			bullet.SetActive (true);

            StartCoroutine("ShotCo");
        }

        if (!reloading && DrillUPG.PlamsaDrill == true)
        {
			bullet.GetComponent<BulletMovement>().theCharacterMotor = gameObject.GetComponent<CharacterMotor>();
			bullet.GetComponent<BulletMovement>().damage = Plasmadamage;
            bullet.gameObject.tag = bulletTag;
            
			bullet.transform.position = shootingPoint.transform.position;
			bullet.SetActive (true);

            StartCoroutine("ShotCo");
        }

        if (!reloading && DrillUPG.RapidDrill == true)
        {
			bullet.GetComponent<BulletMovement>().theCharacterMotor = gameObject.GetComponent<CharacterMotor>();
			bullet.GetComponent<BulletMovement>().damage = damage;
            bullet.gameObject.tag = bulletTag;
            
			bullet.transform.position = shootingPoint.transform.position;
			bullet.SetActive (true);

            StartCoroutine("RapidShotCo");
        }

        if (!reloading && DrillUPG.PowerDrill == true)
        {
			bullet.GetComponent<BulletMovement>().theCharacterMotor = gameObject.GetComponent<CharacterMotor>();
			bullet.GetComponent<BulletMovement>().damage = Plasmadamage;
            bullet.gameObject.tag = bulletTag;
            
			bullet.transform.position = shootingPoint.transform.position;
			bullet.SetActive (true);

            StartCoroutine("ShotCo");
        }
    }

    IEnumerator ShotCo()
    {
        reloading = true;

        yield return new WaitForSeconds(reloadTime);

        reloading = false;

    }

    IEnumerator RapidShotCo()
    {
        reloading = true;

        yield return new WaitForSeconds(RapidReload);

        reloading = false;

    }
}

