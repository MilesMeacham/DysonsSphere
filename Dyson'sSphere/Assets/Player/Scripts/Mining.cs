using UnityEngine;
using System.Collections;

public class Mining : MonoBehaviour {


	public GameObject MiningGO;




	public void Mine()
	{
		if(MiningGO.activeInHierarchy == false)
			MiningGO.SetActive(true);

	}
	

}
