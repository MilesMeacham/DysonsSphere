using UnityEngine;
using System.Collections;

public class LavaPiller1 : MonoBehaviour {


	public Rigidbody rb;
	public LavaPillerAttack LavaPA;

    // Use this for initialization
    void Start () {

		rb = GetComponent<Rigidbody> ();
		LavaPA = gameObject.GetComponent<LavaPillerAttack> ();
	}

	void Update (){
		if (LavaPA.reloading = true) {
			rb.constraints = RigidbodyConstraints.FreezePositionY;
		}

		if (LavaPA.reloading = false) {
			rb.constraints = RigidbodyConstraints.None;
			rb.constraints = RigidbodyConstraints.FreezePositionX | RigidbodyConstraints.FreezePositionZ;
			rb.constraints = RigidbodyConstraints.FreezeRotation;
		}
	}
}
