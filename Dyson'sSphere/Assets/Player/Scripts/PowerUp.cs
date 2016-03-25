using UnityEngine;
using System.Collections;

public class PowerUp : MonoBehaviour {
    public CharacterMotor2 Motor;
    public CharacterShot Shot;
    public CharacterHealth Life;

	// Use this for initialization
	void Start () {
        Motor = GetComponent<CharacterMotor2>();
        Shot = GetComponent<CharacterShot>();
        Life = GetComponent<CharacterHealth>();

	}
	
	// Update is called once per frame
	void Update () {
	
	}
    void OnTriggerEnter(Collider collider)
    {
        if (collider.gameObject.tag == "SpeedPU")
        {
            Motor.speed++;
        }

        if (collider.gameObject.tag == "DamagePU")
        {
            Shot.damage++;
        }

        if (collider.gameObject.tag == "JumpPU")
        {
            Motor.jumpForce++;
        }

        if (collider.gameObject.tag == "HealthRest")
        {
            Life.health++;
        }
    }
}
