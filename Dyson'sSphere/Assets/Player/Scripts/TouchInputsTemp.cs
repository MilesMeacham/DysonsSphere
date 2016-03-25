using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class TouchInputsTemp : MonoBehaviour {
	
	public LayerMask touchInputMask;
	
	private List<GameObject> touchList = new List<GameObject>();
	
	private GameObject[] touchesOld;
	
	private RaycastHit hit;
	
	private bool isSwiping = false;
	private bool leftButtonDown = false;
	private bool rightButtonDown = false;
	
	private float minSwipeDist = 50.0f;
	private float maxSwipeTime = 0.5f;
	private float fingerStartTime = 0.0f;
	private float centerScreen = Screen.width * 0.5f;
	
	private Vector2 fingerStartPos = Vector2.zero;
	
	public GameObject objPlayer;
	private CharacterMotor2 characterMotorScript;
	private CharacterJump2 characterJumpScript;
	private CharacterShot characterShotScript;
	
	// Use this for initialization
	void Start () 
	{
		Input.multiTouchEnabled = true;
		characterMotorScript = objPlayer.GetComponent<CharacterMotor2>();
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
					
					//TOUCH BEGIN
				case TouchPhase.Began :
					isSwiping = true;
					fingerStartTime = Time.time;
					fingerStartPos = touch.position;
					
					
					if(touch.position.x < centerScreen)
					{
						characterMotorScript.LeftActivation ();
					}
					
					if(touch.position.x > centerScreen)
					{
						characterMotorScript.RightActivation ();
					}
					
					
					break;//End of Began
					
					//TOUCH END
				case TouchPhase.Ended :
					
					float gestureTime = Time.time - fingerStartTime;
					float gestureDist = (touch.position - fingerStartPos).magnitude;
					
					if(touch.position.x < centerScreen)
					{
						characterMotorScript.movingLeft = false;
					}
					
					if(touch.position.x > centerScreen)
					{
						characterMotorScript.movingRight = false;
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
					
					
					if(isSwiping && gestureTime < maxSwipeTime && gestureDist < minSwipeDist)
					{
						characterShotScript.shot();
					}
					break;
					
					//TOUCH STAY
				case TouchPhase.Stationary :
					
					
					break;
					
					
					//TOUCH CANCEL
				case TouchPhase.Canceled :
					isSwiping = false;
					//recipient.SendMessage("OnTouchExit", hit.point, SendMessageOptions.DontRequireReceiver);
					break;
				}
				
				
				
			}
			
		}// End of Input.touchCount
		
	}//End of Update
}// End of MonoDevelop