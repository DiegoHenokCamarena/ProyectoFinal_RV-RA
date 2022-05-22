using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Collisiones : MonoBehaviour
{

    GameObject mov = null;
    public Rigidbody Cube;

    // Start is called before the first frame update
    void Start()
    {
        mov  = GameObject.Find("Container");
        Cube = mov.GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    //Detect collisions between the GameObjects with Colliders attached
    void OnCollisionEnter(Collision collision)
    {
        //Check for a match with the specified name on any GameObject that collides with your GameObject
        if (collision.gameObject.name == "arbolWukong (1)" || collision.gameObject.name == "arbolWukong (2)" || collision.gameObject.name == "arbolWukong (3)"
        || collision.gameObject.name == "arbolWukong (4)" || collision.gameObject.name == "arbolWukong (7)" || collision.gameObject.name == "arbolWukong (8)"
        || collision.gameObject.name == "arbolWukong (9)" || collision.gameObject.name == "arbolWukong (10)" || collision.gameObject.name == "arbolWukong (12)"
        || collision.gameObject.name == "arbolWukong (13)" || collision.gameObject.name == "arbolWukong (14)" || collision.gameObject.name == "arbolWukong (16)"
        || collision.gameObject.name == "arbolWukong (18)" || collision.gameObject.name == "arbolWukong (21)" || collision.gameObject.name == "arbolWukong (22)"
        || collision.gameObject.name == "arbolWukong (23)" || collision.gameObject.name == "arbolWukong (25)" || collision.gameObject.name == "arbolWukong (27)"
        || collision.gameObject.name == "arbolWukong (28)" || collision.gameObject.name == "arbolWukong (30)")
        {
            //If the GameObject's name matches the one you suggest, output this message in the console
            mov.transform.position = new Vector3(-0.49f, -0.47f, 0.42f);
        }
        if (collision.gameObject.name == "Plane (6)"){
            mov.transform.position = new Vector3(9.07f, 6.93f, 0.42f);
            mov.transform.localRotation = Quaternion.Euler(0,90,0);
        }
        if (collision.gameObject.name == "arbolWukong (29)"){
            mov.transform.position = new Vector3(162.9f, 32.6f, -2.1f);
            //Cube.transform.rotation = Quaternion.Euler(0.0f,0.0f,0.0f);
        }
    }
}
