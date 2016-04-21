using UnityEngine;
using System.Collections;

public class IceEnemyExplode : MonoBehaviour {

    private TrackPlayer theTrackPlayer;
    private float targetDistance;
    public GameObject IceShard1;
    public GameObject IceShard2;
    public GameObject IceShard3;
    public GameObject IceShard4;
    public GameObject IceShard5;
    public GameObject IceShard6;
    public GameObject IceShard7;
    public GameObject IceShard8;
    public Transform icePoint1;
    public Transform icePoint2;
    public Transform icePoint3;
    public Transform icePoint4;
    public Transform icePoint5;
    public Transform icePoint6;
    public Transform icePoint7;
    public Transform icePoint8;
    public float countdown = 3f;
    public float IceStart = 5;
    
 
    public bool reloading;


    void Start()
    {
        theTrackPlayer = gameObject.GetComponent<TrackPlayer>();
    }

    // Update is called once per frame
    void Update () {
        targetDistance = theTrackPlayer.targetDistance;
  
    
        if (targetDistance < IceStart && !reloading)
        {
            Instantiate(IceShard1, icePoint1.position, icePoint1.rotation);
            Instantiate(IceShard2, icePoint2.position, icePoint2.rotation);
            Instantiate(IceShard3, icePoint3.position, icePoint3.rotation);
            Instantiate(IceShard4, icePoint4.position, icePoint4.rotation);
            Instantiate(IceShard5, icePoint5.position, icePoint5.rotation);
            Instantiate(IceShard6, icePoint6.position, icePoint6.rotation);
            Instantiate(IceShard7, icePoint7.position, icePoint7.rotation);
            Instantiate(IceShard8, icePoint8.position, icePoint8.rotation);
            StartCoroutine(waitToExplode());
        }

    }


    IEnumerator waitToExplode() {
        reloading = true;
        yield return new WaitForSeconds(countdown);
        reloading = false;
    }
}
