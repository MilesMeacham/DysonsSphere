using UnityEngine;
using System.Collections;

public class MoverScript : MonoBehaviour 
{
	//public float min=2f;
	//public float max=3f;

	//public GameObject center;
	public bool right, left;
	public int lr_Speed;
	public float directionTime;

	Vector3 right_Direction = new Vector3(0, 0, -1), left_Direction = new Vector3(0, 0, 1);
	bool the_Direction;
	float current_interval = 0;

	// Use this for initialization
	void Start () 
	{
		the_Direction = false;
		lr_Speed = 5;
		directionTime = 3;
		//min=transform.position.x;
		//max=transform.position.x+3;
	}
	
	// Update is called once per frame
	void Update () 
	{

		//transform.position =new Vector3(Mathf.PingPong(Time.time*2,max-min)+min, transform.position.y, transform.position.z);

		Traverse(Countdown (directionTime));
	}

	bool Countdown (float x)
	{

		current_interval -= Time.deltaTime;
		if(current_interval <= 0)
		{
			current_interval = x;
			if(the_Direction == true)
				the_Direction = false;
			else if(the_Direction == false)
				the_Direction = true;
		}
		return the_Direction;
	}

	void Traverse(bool  x)
	{
		if (x == true)
			transform.RotateAround(new Vector3 (0,0,0), left_Direction, Time.deltaTime * lr_Speed);
		else if (x == false)
			transform.RotateAround(new Vector3 (0,0,0), right_Direction, Time.deltaTime * lr_Speed);
	}

}