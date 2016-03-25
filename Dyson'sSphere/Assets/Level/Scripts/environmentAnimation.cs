//Author: Trevor Petersen
//Description: A script used to trigger environmental animations when the player interacts with objects in the environment.

using UnityEngine;
using System.Collections;

public class environmentAnimation : MonoBehaviour {

	Animator anim;//This is for the Animator component

	//Note that many functions of the environmental animation will be controlled using
	//mecanim in the Unity editor.

	void Start () 
	{
		anim = gameObject.GetComponent<Animator>();//This gets our Animator
	}



	void Update () 
	{
	
	}



	void OnTriggerEnter (Collider other)
	{
		if(other.transform.tag == "Player")
		{
			//The following lines of code will cause the animation to play only once: (Note that this can also be done without code by unchecking the Loop Time box in the inspector of the animation in question)
				//animation["AnimationName"].wrapMode = WrapMode.Once;
				//animation.Play("AnimationName");

			//The following can change a bool used in mecanim:
				//anim.SetBool("BoolName", true);
				//anim.SetBool("BoolName", false);

			//The following can change the value of a float in mecanim:
			//anim.SetFloat("FloatNamne", value);


		}
	}
}
