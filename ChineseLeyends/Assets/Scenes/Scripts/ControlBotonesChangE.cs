using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
public class ControlBotonesChangE : MonoBehaviour
{    
    public AudioSource audioSource;
    public AudioClip audioClip;
    private int counter = 0;

    GameObject wall1 = null;
    public Rigidbody pared1;
    GameObject wall2 = null;
    public Rigidbody pared2;
    GameObject wall3 = null;
    public Rigidbody pared3;
    GameObject wall4 = null;
    public Rigidbody pared4;

    GameObject mov = null;
    public Rigidbody Cube;

    // Update is called once per frame
    public void goToMoon()
    {
        //if(counter == 8){
            mov.transform.position = new Vector3(-7.59f, 40.0f, -11.11f);
        //}
        
    }

    public void incCounter(){
        counter = counter + 1;
    }

    void Start(){
        wall1  = GameObject.Find("vid1");
        pared1 = wall1.GetComponent<Rigidbody>();
        wall2  = GameObject.Find("vid2");
        pared2 = wall2.GetComponent<Rigidbody>();
        wall3  = GameObject.Find("vid3");
        pared3 = wall3.GetComponent<Rigidbody>();
        wall4  = GameObject.Find("vid4");
        pared4 = wall4.GetComponent<Rigidbody>();

        mov  = GameObject.Find("Container");
        Cube = mov.GetComponent<Rigidbody>();
    }

    void Update(){
        if(counter == 2){
            wall1.transform.position = new Vector3(-7.59f, 4.0f, -11.11f);
        }
        if(counter == 4){
            wall2.transform.position = new Vector3(-12.72f, 4.0f, -27.16f);
        }
        if(counter == 6){
            wall3.transform.position = new Vector3(-25.63f, 4.0f, -21.98f);
        }
        if(counter == 8){
            wall4.transform.position = new Vector3(-16.73f, 4.0f, -9.19f);
        }
    }

}
