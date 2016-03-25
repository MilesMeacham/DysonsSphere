// Author: Miles Meacham
// Description: Generates a planet with the desired amount of rings

using UnityEngine;
using System.Collections;
using System.Collections.Generic;

// Planet Generation
// Generates a planet with the desired amount of rings
public class planetGeneration : MonoBehaviour {

	// Select how many rings (Currently it can't be more than 3 because we have not created rings of that size)
	public int ringAmount = 3;

	public const string PLANET_NAME = "Planet";

	// These variables deal with the rotation and placement of the shards
	int rotationDegree;
	int rotationValue = 0;
	int sectionsPerWorld = 4;

	// These variables deal with the different sizes of shards
	// These will be changing soon (If not just removed). They will all be 4
	int lrgPlanetSections = 4;
	int medPlanetSections = 4;
	int smlPlanetSections = 4;

	// This gets populated with the current sections being placed
	public List<GameObject> sections = new List<GameObject>();

	// These Lists are used to procedurally choose the shards for the rings
	// Add the shards in the Inspector

	private List<GameObject> smlSections = new List<GameObject>();
	private List<GameObject> medSections = new List<GameObject>();
	private List<GameObject> lrgSections = new List<GameObject>();

	private int sectionToAdd;


	// Purpose: Generates the Planet
	// Parameters: Void
	// Returns: None
	// Pre-conditions: Just make sure that you have populated the lists in the inspector
	// Post-conditions:
	// -----------------------------------------------------------------
	void Awake () {

		Object[] sectionsArray = Resources.LoadAll("Shards/SmlShards",typeof(GameObject));

		foreach(var obj in sectionsArray)
			smlSections.Add (obj as GameObject);

		Object[] sectionsArray2 = Resources.LoadAll("Shards/MedShards",typeof(GameObject));

		foreach(var obj in sectionsArray2)
			medSections.Add (obj as GameObject);


		Object[] sectionsArray3 = Resources.LoadAll("Shards/LrgShards",typeof(GameObject));
		
		foreach(var obj in sectionsArray3)
			lrgSections.Add (obj as GameObject);



		int planetSize = 1;

		// Create an empty game object to parent all the shards to
		GameObject planet = new GameObject();

		// Assign the proper components to the planet
		planet.AddComponent<Attractor> ();
		
		// Name this one according to the PLANET_NAME variable *It should only happen once
		planet.name = PLANET_NAME;

		// Place the planet origin
		planet.transform.position = new Vector3 (0 , 0, 0);
		//planet.transform.Rotate (0, 180, 0);                 // Use this if it is generating the Planet backwards


		// Start Generating Rings
		for(int i = 0; i < ringAmount; i++)
		{

			// Assign the Shards to the list "sections"
			if(planetSize == 1){
				sectionsPerWorld = smlPlanetSections;
				
				for (int y = 0; y < sectionsPerWorld; y++)
				{
					int sectionToAdd = Random.Range (0, smlSections.Count);
					sections.Add(smlSections[sectionToAdd]);
					smlSections.RemoveAt(sectionToAdd);
				}
			} 
			else if (planetSize == 2)
			{
				sectionsPerWorld = medPlanetSections;
				
				for (int y = 0; y < sectionsPerWorld; y++)
				{
					int sectionToAdd = Random.Range (0, medSections.Count);
					sections.Add(medSections[sectionToAdd]);
					medSections.RemoveAt(sectionToAdd);
				}
			} else {
				sectionsPerWorld = lrgPlanetSections;
				
				for (int y = 0; y < sectionsPerWorld; y++)
				{
					int sectionToAdd = Random.Range (0, lrgSections.Count);
					sections.Add(lrgSections[sectionToAdd]);
					lrgSections.RemoveAt(sectionToAdd);
				}
			}
			
			// Get the proper amount the shards need to be rotated
			rotationDegree = 360/sectionsPerWorld;
			
			// Create an empty game object to parent all the shards to
			GameObject ring = new GameObject();

			
			// Place the ring origin
			ring.transform.position = new Vector3 (0 , 0, 0);

			

			
			// Name the first ring "ring" and the rest "Moon"
			// If it is a "Moon", parent it to the "ring"
			GameObject mainPlanet = GameObject.Find (PLANET_NAME);
			
			ring.name = "Ring" + i;
			
			ring.transform.parent = mainPlanet.transform;

			// Add left or right rotates to each ring
			if(i % 2 == 1)
				ring.AddComponent<RotateLeft>();
			else
				ring.AddComponent<RotateRight>();
			
			// Randomly choose shards from the list of shards
			for(int n = 0; n < sectionsPerWorld; n++){
				
				int rand = Random.Range (0, sections.Count);
				//GameObject value = sections[rand];
				
				// Place shard
				GameObject obj = Instantiate (sections[rand], new Vector3(ring.transform.position.x, ring.transform.position.y, (ring.transform.position.z - 1)), Quaternion.Euler(ring.transform.rotation.x, ring.transform.rotation.y, ring.transform.rotation.z + rotationValue)) as GameObject;
				
				// Parent to ring or Moon respectivly
				obj.transform.parent = ring.transform;
				
				// Add MeshCollider (This could be done in the prefab) If so, remove this code
				obj.AddComponent<MeshCollider> ();
				
				// Rename the Shard
				// obj.name = "Shard" + n;
				
				// Remove Shard from list to not choose duplicates
				sections.RemoveAt(rand);
				
				// Change Rotation Value for the next shard
				rotationValue += rotationDegree;
				
				
			}
			
			planetSize++;
			
			
			
		}
	} // Awake End


}