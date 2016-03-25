using UnityEngine;
using System.Collections;

public class buttonLocation : MonoBehaviour {

	private Vector3 vector3Pos;
	public Camera guiCam;
	public float zPos;
	public float yPos;
	public float xPos;
	private float buttonOrient;

	// Use this for initialization
	void Start () {

		vector3Pos = new Vector3(xPos, yPos, zPos);
		transform.position = guiCam.ViewportToWorldPoint(vector3Pos);//gui.camera.ViewportToWorldPoint(v3Pos)
	
	}
	
	// Update is called once per frame
	void Update () {

		vector3Pos = new Vector3(xPos, yPos, zPos);
		transform.position = guiCam.ViewportToWorldPoint(vector3Pos);

		/*buttonOrient = guiCam.transform.rotation;
		gameObject.transform.rotation.y = buttonOrient;*/
	
	}
}
