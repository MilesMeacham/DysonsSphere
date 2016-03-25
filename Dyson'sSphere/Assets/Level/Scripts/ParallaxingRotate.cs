using UnityEngine;
using System.Collections;

public class ParallaxingRotate : MonoBehaviour {

	// Declaring Variables
	private CharacterMotor2 thePlayerMotor;
	
	public bool parallax;

	// Match this up with the backgrounds to determine how fast or slow each should move. Do this in the Editor
	public float[] parallaxAmounts;

	public Transform[] backgrounds;
	public float smoothing = 100;

	
	// Use this for initialization
	void Start () 
	{
		thePlayerMotor = GameObject.Find ("Player").GetComponent<CharacterMotor2> ();
	}
	
	// Update is called once per frame
	void FixedUpdate () 
	{
		if (thePlayerMotor.movingLeft)
			Parallax (-1);
	    if (thePlayerMotor.movingRight)
			Parallax (1);
	}
	
	// Update is called once per frame
	void Parallax (float leftOrRight) 
	{

		for (int i = 0; i < backgrounds.Length; i++) 
		{
			float parallax = (parallaxAmounts[i] / smoothing);

			transform.Rotate(new Vector3 (0, 0, GetComponent<Transform>().rotation.z + parallax) * Time.deltaTime * leftOrRight);

		//	backgrounds[i].position = new Quaternion (backgrounds[i].position.x, backgrounds[i].position.y, backgrounds[i].position.z + parallax);
		//	backgrounds[i].position = new Quaternion (backgrounds[i].position.x + parallax.x, backgrounds[i].position.y + parallax.y, backgrounds[i].position.z);
		}

	}
}
