using UnityEngine;
using System.Collections;

public class ButtonControls : MonoBehaviour {

    private CharacterMotor2 characterMotor;
    private CharacterJump2 characterJump;
    private CharacterShot characterShot;

    void Start() {
        characterMotor = gameObject.GetComponent<CharacterMotor2>();
        characterJump = gameObject.GetComponent<CharacterJump2>();
        characterShot = gameObject.GetComponent<CharacterShot>();
    }

    public void onClick ()
    {
  
            characterMotor.RightActivation();
        }
    
}
