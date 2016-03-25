using UnityEngine;
using System.Collections;

public class HUD_Button_Fade : MonoBehaviour {

	private Animator hudMoveAnim;

	// Use this for initialization
	void Awake () {
		hudMoveAnim = GetComponent<Animator> ();
	}
	
	public void HUDFace ()
	{
		hudMoveAnim.SetTrigger ("FadeOut");
	}
}
