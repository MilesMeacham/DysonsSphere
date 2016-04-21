using UnityEngine;
using System.Collections;

public class LavaPillar3 : MonoBehaviour {

    public float LavaTimer = 1.0f;
    public Transform LavaPillerPoint4;
    public GameObject LavaPiller4;

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
        Instantiate(LavaPiller4, LavaPillerPoint4.position, LavaPillerPoint4.rotation);
        yield return new WaitForSeconds(LavaTimer);
        Destroy(gameObject);
    }
}
