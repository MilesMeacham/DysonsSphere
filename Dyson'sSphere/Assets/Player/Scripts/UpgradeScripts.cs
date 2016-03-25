using UnityEngine;
using System.Collections;

public class UpgradeScripts : MonoBehaviour {
    public CharacterMotor2 Motor;
    public CharacterShot Shot;
    public CharacterHealth Life;
    public TakeDamage Damage;
    public bool SpeedBoots;
    public bool HazBoots;

    // Use this for initialization
    void Start()
    {
        Motor = GetComponent<CharacterMotor2>();
        Shot = GetComponent<CharacterShot>();
        Life = GetComponent<CharacterHealth>();
        Damage = GetComponent<TakeDamage>();
    }

    // Update is called once per frame
    void Update()
    {
        if (SpeedBoots == false && Motor.facingRight == true)
        {
            Motor.speed = 5;
        }

        if (SpeedBoots == false && Motor.facingRight == false)
        {
            Motor.speed =-5;
        }

        if (HazBoots == false)
        {
            Damage.immuneToHazardDamage = false;
        }
    }
    void OnTriggerEnter(Collider collider)
    {
        if (collider.gameObject.tag == "SpeedBootsUPG" && Motor.facingRight == true)
        {
            Motor.speed = 8;
     
            SpeedBoots = true;
            Damage.immuneToHazardDamage = false;
        }
        else
        if (collider.gameObject.tag == "SpeedBootsUPG" && Motor.facingRight == false)
        {
            Motor.speed = -10;

            SpeedBoots = true;
        }

        if (collider.gameObject.tag == "HazBootUPG")
        {
            Damage.immuneToHazardDamage = true;           
            SpeedBoots = false;
            HazBoots = true;
        }
    }
}