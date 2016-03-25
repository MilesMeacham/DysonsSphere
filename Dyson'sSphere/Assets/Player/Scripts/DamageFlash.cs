using UnityEngine;
using System.Collections;

public class DamageFlash : MonoBehaviour {

    Renderer myRender;
    public float flashTimer;

    IEnumerator flashRed () {
        myRender.material.color = Color.red;
        yield return new WaitForSeconds(flashTimer);

    }

	// Use this for initialization
	void Start () {
   
	}

    void OnTriggerEnter(Collider Collider)
    {
        if (Collider.gameObject.tag == "EnemyBullet")
        {
            flashRed();
        }
    }
}
