using UnityEngine;
using System.Collections;

public class PUItem : MonoBehaviour {

    public GameObject Player;

    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }
    void OnTriggerEnter(Collider Collider)
    {
        if (Collider.gameObject.tag == "Player")
        {

            Destroy(gameObject);
        }
    }
}