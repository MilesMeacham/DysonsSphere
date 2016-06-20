using UnityEngine;
using System.Collections;

public class LavaPillar2 : MonoBehaviour {

    public float LavaTimer = 1.0f;
    public Transform LavaPillerPoint3;
    public GameObject LavaPiller3;


    // Use this for initialization
    void Start()
    {
        StartCoroutine("DestroyPiller");
    }


    public IEnumerator DestroyPiller()
    {
        yield return new WaitForSeconds(LavaTimer);
        Instantiate(LavaPiller3, LavaPillerPoint3.position, LavaPillerPoint3.rotation);
        yield return new WaitForSeconds(LavaTimer);
        Destroy(gameObject);
    }

}
