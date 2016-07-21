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
			transform.position = new Vector3(0, 3, 0);
			rb.constraints = RigidbodyConstraints.FreezePositionY;
		}

		if (LavaPA.reloading = false) {
			rb.constraints = RigidbodyConstraints.None;
			rb.constraints = RigidbodyConstraints.FreezePositionX;
			rb.constraints = RigidbodyConstraints.FreezeRotation;
		}
	}
}
