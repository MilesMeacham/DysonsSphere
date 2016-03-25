using UnityEngine;
using System.Collections;

public class DrillUpgrades : MonoBehaviour {

    public CharacterShot Shot;
    public bool PowerDrill;
    public bool PlamsaDrill;
    public bool RapidDrill;


    // Use this for initialization
    void Start()
    {
        Shot = GetComponent<CharacterShot>();
    }

    // Update is called once per frame
    void Update()
    {
        if (PowerDrill == false)
        {
            Shot.damage = (1f);
        }
    }
    void OnTriggerEnter(Collider collider)
    {
        if (collider.gameObject.tag == "PowerDrillUPG")
        {
            Shot.damage = 2;
            PowerDrill = true;
            PlamsaDrill = false;
            RapidDrill = false;
        }

        if (collider.gameObject.tag == "PlasmaDrillUPG")
        {
            PlamsaDrill = true;
            PowerDrill = false;
            RapidDrill = false;
        }

        if (collider.gameObject.tag == "RapidDrillUPG")
        {
            Shot.reloadTime = .25f;
            PlamsaDrill = false;
            PowerDrill = false;
            RapidDrill = true;
        }
    }
}