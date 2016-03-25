// Author: Miles Meacham
// Description: Enables Character to Jump through the bottom of a platform

using UnityEngine;
using System.Collections;

// Jump Through Platforms
// Need to set the desired platform to layer 12

public class JumpThroughPlatforms : MonoBehaviour {

	// Declaring Variables
	private int playerLayer = 9;
	private int platformLayer = 13;
	private float playerVelocity;
	private float newPosition;
	private float oldPosition;
	private Transform rb;
	private Attractor core;
	

	// Use this for initialization
	void Start () {
		rb = GetComponent<Transform>();
		core = FindObjectOfType<Attractor>();

	}
	
	// Update is called once per frame
	void FixedUpdate () {

		// Get the distance from the center of the planet
		newPosition = Vector3.Distance(rb.position, core.GetComponent<Transform>().position);

		// Find the difference of the oldPosition from newPosition
		playerVelocity = newPosition - oldPosition;

		// If the distance of the formula above is greater than 0.01, then the player is jumping
		// making it so he can go through the desired platforms
		Physics.IgnoreLayerCollision(playerLayer, platformLayer, playerVelocity > 0.01f);

		// Set oldPosition equal to newPosition
		oldPosition = newPosition;
	}
	
}
