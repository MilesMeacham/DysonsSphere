using UnityEngine;
using System.Collections;

public class cameraController : MonoBehaviour {

	//moving the camera around with the planet and player
	public GameObject player;
	public float smoothTime;
    public float horizontalOffset;
	public float cameraHeight;
	public float cameraDepth;
	public float verticalSmooth;
	public float zoomoffsetH;
	public float zoomheight;
	public float zoomdepth;
	public static bool isPaused;

	public Transform target;
	private Vector3 velocity = Vector3.zero;


	// Use this for initialization
	void Start () 
	{

	}

	void FixedUpdate ()
	{
		if (isPaused == false)
		{
			Vector3 targetPosition = target.TransformPoint (new Vector3 (horizontalOffset, cameraHeight, cameraDepth));

			transform.position = Vector3.SmoothDamp(transform.position, targetPosition, ref velocity, smoothTime);
		}

		if (isPaused == true)
		{
			Vector3 targetPosition = target.TransformPoint (new Vector3 (zoomoffsetH, zoomheight, zoomdepth));
			
			transform.position = Vector3.SmoothDamp(transform.position, targetPosition, ref velocity, smoothTime);
		}

		if (Input.GetKeyDown(KeyCode.P))
		{
			if(isPaused == false)
			{
				isPaused = true;
			}
			else if(isPaused == true)
			{
				isPaused = false;
			}
		}

		gameObject.transform.rotation = target.transform.rotation;
	}
	


	// LateUpdate is best for camera movement and gathering last saves
	void LateUpdate () 
	{
	
		//transform.rotation = player.transform.rotation;
	}
	
}//ref velocity .... transform.position = Vector3.SmoothDamp(transform.position, targetPosition, ref velocity, smoothTime);
