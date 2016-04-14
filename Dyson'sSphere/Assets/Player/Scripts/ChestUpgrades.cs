using UnityEngine;
using System.Collections;

public class ChestUpgrades : MonoBehaviour {
    public CharacterMotor Motor;
    public CharacterShot Shot;
    public CharacterHealth Life;
    public TakeDamage Damage;
    public bool RocketPack;
    public bool SuperArmor;
    public bool SpikeArmor;

    IEnumerator RegenArmor() {
        while (SuperArmor == true) {
            Life.health++;
            yield return new WaitForSeconds(20);
        }
    }

    // Use this for initialization
    void Start () {
        Motor = GetComponent<CharacterMotor>();
        Shot = GetComponent<CharacterShot>();
        Life = GetComponent<CharacterHealth>();
        Damage = GetComponent<TakeDamage>();
    }
	
	// Update is called once per frame
	void Update () {
        if (RocketPack == false)
        {
            Motor.jumpForce = 10;
        }
        if (SuperArmor == false)
        {
            //Life.removeHealth(1f);
        }
    }

    void OnTriggerEnter(Collider collider)
    {
        if (collider.gameObject.tag == "RocketPackUPG")
            {
            Motor.jumpForce = 15;
            RocketPack = true;
            SuperArmor = false;
            SpikeArmor = false;
        }

        if (collider.gameObject.tag == "SuperArmorUPG")
            {
            StartCoroutine(RegenArmor());
            RocketPack = false;
            SuperArmor = true;
            SpikeArmor = false;
        }

        if (collider.gameObject.tag == "SpikeArmorUPG")
        {
            RocketPack = false;
            SuperArmor = false;
            SpikeArmor = true;
        }
    }
    }
