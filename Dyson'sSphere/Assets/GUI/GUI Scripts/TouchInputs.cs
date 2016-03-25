using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class TouchInputs : MonoBehaviour {
	
	public LayerMask touchInputMask;
	
	private List<GameObject> touchList = new List<GameObject>();
	
	private GameObject[] touchesOld;
	
	private RaycastHit hit;
	
	private bool isSwiping = false;
	
	private float minSwipeDist = 30.0f;
	private float maxSwipeTime = 0.25f;
	private float fingerStartTime = 0.0f;
	private float fingerHoldDuration = 0.0f;
	private float moveDuration = 0.4f;
	private float centerScreen = Screen.width * 0.5f;
	private float gestureTime;
	private float gestureDist;
	
	private Vector2 fingerStartPos = Vector2.zero;
	
	public GameObject objPlayer;
	private CharacterMotor characterMotorScript;
	private CharacterJump2 characterJumpScript;
	private CharacterShot characterShotScript;
	
	
	// Use this for initialization
	void Start () 
	{
		Input.multiTouchEnabled = true;
		characterMotorScript = objPlayer.GetComponent<CharacterMotor>();
		characterJumpScript = objPlayer.GetComponent<CharacterJump2>();
		characterShotScript = objPlayer.GetComponent<CharacterShot>();
	}
	
	// Update is called once per frame
	void Update () 
	{
		//This is for touch controls
		if(Input.touchCount > 0)
		{
			
			touchesOld = new GameObject[touchList.Count];
			touchList.CopyTo(touchesOld);
			touchList.Clear();
			
			
			foreach (Touch touch in Input.touches)
			{ 
				
				switch(touch.phase)
				{
					
					//////////////////////////////////////////////////-------TOUCH BEGIN-------///////////////////////////////////////////////////////////////////
				case TouchPhase.Began :
					
					isSwiping = true;
					fingerStartTime = Time.time;
					fingerStartPos = touch.position;
					
					
					/*if(touch.position.x < centerScreen)
						{
							if(characterMotorScript.facingRight == true)
							{
								characterMotorScript.Flip ();
								characterMotorScript.facingRight = false;
							}
							//characterMotorScript.LeftActivation ();
						}
					
						if(touch.position.x > centerScreen)
						{
							if(characterMotorScript.facingRight == false)
							{
								characterMotorScript.Flip ();
								characterMotorScript.facingRight = true;
							}
							//characterMotorScript.RightActivation ();
						}*/
					
					
					
					break;//End of Began
					
					
					///////////////////////////////////////////////////-----TOUCH STATIONARY------/////////////////////////////////////////////////////////
				case TouchPhase.Stationary :
				case TouchPhase.Moved :
					
					//fingerStartTime = Time.time;
					//fingerStartPos = touch.position;
					fingerHoldDuration += 0.1f;
					
					if(touch.position.x < centerScreen && fingerHoldDuration >= moveDuration)
					{
						characterMotorScript.LeftActivation ();
					}
					
					if(touch.position.x > centerScreen && fingerHoldDuration >= moveDuration)
					{
						characterMotorScript.RightActivation ();
					}
					
					break;// End of Stationary
					
					//////////////////////////////////////////////////------TOUCH END------///////////////////////////////////////////////////////////////////////////////////////
				case TouchPhase.Ended :
					
					//This is where gestureTime and gesturDist were...
					gestureTime = Time.time - fingerStartTime;
					gestureDist = (touch.position - fingerStartPos).magnitude;
					
					if(touch.position.x < centerScreen)
					{
						characterMotorScript.movingLeft = false;
						fingerHoldDuration = 0.0f;
					}
					
					if(touch.position.x > centerScreen)
					{
						characterMotorScript.movingRight = false;
						fingerHoldDuration = 0.0f;
					}
					
					
					if(isSwiping && gestureTime < maxSwipeTime && gestureDist > minSwipeDist)
					{
						Vector2 direction = touch.position - fingerStartPos;
						Vector2 swipeType = Vector2.zero;
						
						if(Mathf.Abs(direction.x) > Mathf.Abs(direction.y))
						{
							//Horizontal Swipe
							swipeType = Vector2.right * Mathf.Sign(direction.x);
						}else
						{
							//Vertical Swipe
							swipeType = Vector2.up * Mathf.Sign(direction.y);
						}
						
						//Determines horizontal swipe direction
						if(swipeType.x != 0.0f)
						{
							if(swipeType.x > 0.0f)
							{
								//Move Right
							}else
							{
								//Move Left
							}
						}
						
						//Determines vertical swipe direction
						if(swipeType.y != 0.0f)
						{
							if(swipeType.y > 0.0f)
							{
								//Move Up
								
								characterJumpScript.Jump ();
							}else
							{
								//Move Down
							}
						}
						
						
					}
					
					
					if(isSwiping && gestureTime < maxSwipeTime && gestureDist < minSwipeDist)// Checks the time and distance of the touch - Used for shooting
					{
						characterShotScript.shot();
					}
					
					break;// End of Ended
					
					
					
					//////////////////////////////////////////////////////////------TOUCH CANCEL-------///////////////////////////////////////////////////////////////////////////////
					
				case TouchPhase.Canceled :
					isSwiping = false;
					//recipient.SendMessage("OnTouchExit", hit.point, SendMessageOptions.DontRequireReceiver);
					
					break;// End of Canceled
				}
				
				
				
			}
			
		}// End of Input.touchCount
		
		
	}//End of Update
}// End of MonoDevelop