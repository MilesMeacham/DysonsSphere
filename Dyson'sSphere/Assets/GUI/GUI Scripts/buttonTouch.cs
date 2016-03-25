using UnityEngine;
using System.Collections;

public class buttonTouch : MonoBehaviour {

	public Color defaultColor;
	public Color selectedColor;
	public Color swipeColor;
	private Material mat;

	void Start(){
	//	mat = GetComponent<Renderer>().material;
		mat.color = defaultColor;
	}

	void OnTouchDown(){
		mat.color = selectedColor;
		//print ("It's working!");
	}

	void OnTouchUp(){
		mat.color = defaultColor;
	}

	void OnTouchStay(){
		mat.color = selectedColor;
	}

	void OnTouchMove(){
		mat.color = swipeColor;
	}

	void OnTouchExit(){
		mat.color = defaultColor;
	}

	void Update(){
	}
}
