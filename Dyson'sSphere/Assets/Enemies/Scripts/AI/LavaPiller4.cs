using UnityEngine;
using System.Collections;

public class LavaPiller4 : MonoBehaviour {


    public float LavaTimer = 2.0f;


    // Use this for initialization
    void Start()
    {
        StartCoroutine("DestroyPiller");
    }

    // Update is called once per frame
    void Update()
    {

    }

    public IEnumerator DestroyPiller()
    {
        yield return new WaitForSeconds(LavaTimer);
        Destroy(gameObject);
    }

}
