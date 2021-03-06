using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.UI;

public class ps4Controller : MonoBehaviour
{
    GameObject mov = null;
    public Rigidbody Cube;
    float rot = 0.0f;
    float vel = 5.0f;
    

    // Start is called before the first frame update
    void Start()
    {
        for (int i = 0; i < Gamepad.all.Count; i++)
        {
            Debug.Log(Gamepad.all[i].name);
        }
        
        mov  = GameObject.Find("Container");
        Cube = mov.GetComponent<Rigidbody>();

        
    }

    // Update is called once per frame
    void Update()
    {
        if (Gamepad.all.Count > 0)
        {
            if (Gamepad.all[0].leftStick.up.isPressed)
            {
                Cube.velocity = transform.forward * vel;
                
            }
                
            if (Gamepad.all[0].leftStick.down.isPressed)
            {
                Cube.velocity = -transform.forward * vel;
                
            }

            if (Gamepad.all[0].leftStick.right.isPressed)
            {
                Cube.velocity = transform.right * vel;
                
            }
                
            if (Gamepad.all[0].leftStick.left.isPressed)
            {
                Cube.velocity = -transform.right * vel;
                
            }

            if (Gamepad.all[0].rightStick.right.isPressed)
            {
                rot = (float)(rot+1);
                mov.transform.Rotate(0.0f, rot, 0.0f, Space.World);
                
            }
            rot = 0.0f;

            if (Gamepad.all[0].rightStick.left.isPressed)
            {
                rot = (float)(rot-1);
                mov.transform.Rotate(0.0f, rot, 0.0f, Space.World);
                
            }

            

            if (Gamepad.all[0].leftStick.up.isPressed && Gamepad.all[0].rightStick.up.isPressed)
            {
                Cube.velocity = transform.up * vel;
                Cube.velocity = transform.forward * vel;
            }
            
        }
            
    }
}
