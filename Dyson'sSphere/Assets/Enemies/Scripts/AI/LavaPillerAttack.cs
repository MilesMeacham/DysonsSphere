using UnityEngine;
using System.Collections;

public class LavaPillerAttack : MonoBehaviour {

    private TrackPlayer theTrackPlayer;
    private float targetDistance;
    public GameObject LavaPiller1;
	public GameObject LavaPiller2;
	public GameObject LavaPiller3;
	public GameObject LavaPiller4;
    public Transform LavaPillerPoint1;
    public float countdown = 1f;
    public float PillerStart = 5;
    public float waitingTime = 4f;
    public CharacterMotor2 CM;
	public Rigidbody rb;

    public bool reloading;


    void Start()
    {
        theTrackPlayer = gameObject.GetComponent<TrackPlayer>();
		rb = gameObject.GetComponent<Rigidbody> ();
    }

    // Update is called once per frame
    void Update()
    {
        targetDistance = theTrackPlayer.targetDistance;


        if (targetDistance < PillerStart && !reloading)
        {
            StartCoroutine(waitToExplode());
        }

    }


    IEnumerator waitToExplode()
    {

        reloading = true;
		rb.constraints = RigidbodyConstraints.FreezePositionX | RigidbodyConstraints.FreezePositionY | RigidbodyConstraints.FreezeRotation; 
		LavaPiller1.SetActive (true);
		yield return new WaitForSeconds(countdown);
		LavaPiller2.SetActive (true);
		yield return new WaitForSeconds(countdown);
		LavaPiller1.SetActive (false);
		yield return new WaitForSeconds(countdown);
		LavaPiller3.SetActive (true);
		yield return new WaitForSeconds(countdown);
		LavaPiller2.SetActive (false);
		yield return new WaitForSeconds(countdown);
		LavaPiller4.SetActive (true);
		yield return new WaitForSeconds(countdown);
		LavaPiller3.SetActive (false);
		yield return new WaitForSeconds(countdown);
		LavaPiller4.SetActive (false);
		rb.constraints = RigidbodyConstraints.None;
		rb.constraints = RigidbodyConstraints.FreezeRotation;
		reloading = false;
    }
}
