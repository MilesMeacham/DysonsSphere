using UnityEngine;
using System.Collections;

public class LavaPiller1 : MonoBehaviour {

    public float LavaTimer = 1.0f;
    public Transform LavaPillerPoint2;
    public GameObject LavaPiller2;

    // Use this for initialization
    void Start () {
        StartCoroutine("DestroyPiller");
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    public IEnumerator DestroyPiller()
    {
        yield return new WaitForSeconds(LavaTimer);
        Instantiate(LavaPiller2, LavaPillerPoint2.position, LavaPillerPoint2.rotation);
        yield return new WaitForSeconds(LavaTimer);
        Destroy(gameObject);
    }

}
