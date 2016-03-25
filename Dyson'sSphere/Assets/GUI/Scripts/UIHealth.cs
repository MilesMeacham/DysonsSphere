using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class UIHealth : MonoBehaviour {
	
	
	public Sprite heartFull;
	public Sprite heartEmpty;
	public Sprite heartHalf;
	
	public CharacterHealth theCharacterHealth;
	private Image theSpriteRenderer;
	
	public int heartContainerNumber;
	// Use this for initialization
	void Start () {
		theCharacterHealth = GameObject.Find ("Player").GetComponent<CharacterHealth> ();
		theSpriteRenderer = GetComponent<Image> ();
		theSpriteRenderer.sprite = heartFull;
	}
	
	// Update is called once per frame
	void Update () 
	{
		
		if (theCharacterHealth.health >= (1 * heartContainerNumber))
			theSpriteRenderer.sprite = heartFull;
		else if (theCharacterHealth.health < (1 * heartContainerNumber) && theCharacterHealth.health > ((1 * heartContainerNumber) - 1))
			theSpriteRenderer.sprite = heartHalf;
		else
			theSpriteRenderer.sprite = heartEmpty;
		
		
	}
}