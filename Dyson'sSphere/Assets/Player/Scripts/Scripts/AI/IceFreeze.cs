using UnityEngine;
using System.Collections;

public class IceFreeze : MonoBehaviour {
    public CharacterMotor2 Motor;
    public float frozenTime = 1;
    public UpgradeScripts Upgrades;
    
    // Use this for initialization
    void Start () {
        Motor = GetComponent<CharacterMotor2>();
    }
	
	// Update is called once per frame
	void Update () {
	
	}
    void OnTriggerEnter(Collider Collider)
    {
        if (Collider.gameObject.tag == "IceShot")
        {
            StartCoroutine(freeze());
           
        }
    }
    IEnumerator freeze() {
        Motor.speed = 0;
        yield return new WaitForSeconds(frozenTime);

        if (Motor.facingRight == true && Upgrades.SpeedBoots == false) {
            Motor.speed = 5;
        }

        else
        if (Motor.facingRight == false && Upgrades.SpeedBoots == false) {
            Motor.speed = -5;
        }

        else
        if (Motor.facingRight == true && Upgrades.SpeedBoots == true)
        {
            Motor.speed = 10;
        }

        else
        if (Motor.facingRight == false && Upgrades.SpeedBoots == true)
        {
            Motor.speed = -10;
        }


    }
}
