using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class MineralCounter : MonoBehaviour {

    private float mineralTotal = 0;
	public Image mineralBar;

	// Mineral count
	public int mediumDoors = 5;
	public int largeDoors;
	public float AmountOfMineralsNeededToWin = 20;
	private bool mediumDoorsOpened = false;
	private bool largeDoorsOpened = false;

	// Delegate
	public delegate void doorsOpen (int door); 	// pass 0 to close, 1 for medium, 2 for large
	public static event doorsOpen onMineralsCollected;

    // Use this for initialization
    void Start () 
	{
      
		mineralTotal = 0;
		mineralBar.fillAmount = mineralTotal;
	}
	
	// Update is called once per frame
	public void AddMineral (int amount) 
	{
		mineralTotal += amount;

		//Need to divide this by the amount needed to win because the fill amount is always 1
		mineralBar.fillAmount = mineralTotal / AmountOfMineralsNeededToWin;

		if (mineralTotal >= mediumDoors && mediumDoorsOpened == false) 
		{
			mediumDoorsOpened = true;

			if (onMineralsCollected != null)
				onMineralsCollected (1);
		}
		if (mineralTotal >= largeDoors && largeDoorsOpened == false) 
		{
			largeDoorsOpened = true;

			if (onMineralsCollected != null)
				onMineralsCollected (2);
		}
    }

}
