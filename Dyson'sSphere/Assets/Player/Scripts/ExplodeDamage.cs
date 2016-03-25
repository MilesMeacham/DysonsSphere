using UnityEngine;
using System.Collections;

public class ExplodeDamage : MonoBehaviour {

    public CharacterHealth Life;

    // Use this for initialization
    void Start () {
        Life = GetComponent<CharacterHealth>();
    }	
	
    void OnTriggerEnter(Collider collider)
    {
        if (collider.gameObject.tag == "Explosion")
        {
            Life.removeHealth(2);
        }
    }
}
