using UnityEngine;
using System.Collections;

public class Explode : MonoBehaviour {

	public CharacterHealth CH;
	public GameObject BoomBall;
	public Transform Center;


	// Use this for initialization
	void Start () {
	CH = GetComponent<CharacterHealth> ();
	}
	
	// Update is called once per frame
	void Update () {
		
		if (CH.health == 0) {
			Instantiate (BoomBall, Center.position, Center.rotation); 
		} 

	}
}
