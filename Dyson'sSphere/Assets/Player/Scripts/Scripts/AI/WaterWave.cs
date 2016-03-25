using UnityEngine;
using System.Collections;

public class WaterWave : MonoBehaviour {

    private TrackPlayer theTrackPlayer;
    private float targetDistance;
    public GameObject Wave;
    public Transform shotPoint;
    public float countdown = 3;
    public float WaterWaveStart = 5;
    public bool reloading;
   

    void Start()
    {
        theTrackPlayer = gameObject.GetComponent<TrackPlayer>();
    }

    // Update is called once per frame
    void Update()
    {
        targetDistance = theTrackPlayer.targetDistance;

        if (targetDistance < WaterWaveStart)
        {
            Instantiate(Wave, shotPoint.position, shotPoint.rotation);
            StartCoroutine(WaterShot());
        }
        

    }


    IEnumerator WaterShot()
    {
    
        reloading = true;
        yield return new WaitForSeconds(countdown);
        reloading = false;
    }
}