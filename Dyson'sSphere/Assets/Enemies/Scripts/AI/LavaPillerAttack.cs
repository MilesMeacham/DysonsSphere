using UnityEngine;
using System.Collections;

public class LavaPillerAttack : MonoBehaviour {

    private TrackPlayer theTrackPlayer;
    private float targetDistance;
    public GameObject LavaPiller1;
    public Transform LavaPillerPoint1;
    public float countdown = 3f;
    public float PillerStart = 5;
    public float waitingTime = 4f;
    public CharacterMotor2 CM;

    public bool reloading;


    void Start()
    {
        theTrackPlayer = gameObject.GetComponent<TrackPlayer>();
    }

    // Update is called once per frame
    void Update()
    {
        targetDistance = theTrackPlayer.targetDistance;


        if (targetDistance < PillerStart && !reloading)
        {
            Instantiate(LavaPiller1, LavaPillerPoint1.position, LavaPillerPoint1.rotation);
            StartCoroutine(waitToExplode());
            StartCoroutine(stopMoving());
        }

    }


    IEnumerator waitToExplode()
    {

        reloading = true;
        yield return new WaitForSeconds(countdown);
        reloading = false;
    }

    IEnumerator stopMoving()
    {
        CM.speed = 0;
        yield return new WaitForSeconds(waitingTime);

        if (CM.facingRight == true)
        {
            CM.speed = 5;
        }

        else
        if (CM.facingRight == false)
        {
            CM.speed = -5;
        }
    }
}
