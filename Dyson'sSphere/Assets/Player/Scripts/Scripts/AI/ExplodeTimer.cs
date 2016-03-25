using UnityEngine;
using System.Collections;

public class ExplodeTimer : MonoBehaviour {


    void Start() {

        StartCoroutine(Boom());
    }

    IEnumerator Boom()
    {
       yield return new WaitForSeconds(.01f);
        Destroy(gameObject);
    }
    
}
