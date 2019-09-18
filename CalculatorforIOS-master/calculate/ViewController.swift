//
//  ViewController.swift
//  calculate
//
//  Created by cagataygul on 5.11.2018.
//  Copyright © 2018 cagataygul. All rights reserved.
//

import UIKit
var name = ""
var names = ""
var name3 = ""
var array = [String]()
class ViewController: UIViewController {
    var numberonscreen:Double = 0
    var prevnumber:Double = 0
    var flag = false
    var flag2 = false
    var operation = 0
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var dec: UIButton!
    
    
    @IBAction func numbers(_ sender: UIButton) {
        if flag == true
        {
            label.text=String(sender.tag)
            numberonscreen = Double(label.text!)!
            name = label.text!
            name = names + name
            
            flag = false
        }
        else {
            label.text=label.text! + String(sender.tag)
            numberonscreen = Double(label.text!)!
            name = label.text!
              name = names + name
        }
    }
    
    
    
    
   
    
    
    @IBAction func decimal(_ sender: UIButton) {
       
       
            label.text = label.text! + "."
        
        
    }
    
    
    @IBAction func operationsbuttons(_ sender: UIButton) {
        
        if label.text != "" && sender.tag != 12 && sender.tag != 17
        {
            prevnumber=Double(label.text!)!
            if (sender.tag==13) //divide
            {
                label.text = "÷"
                names = String(prevnumber)+label.text!
                
            }
            else if (sender.tag==14) //multipli
            {
                label.text = " x "
                 names = String(prevnumber)+label.text!
            }
            else if (sender.tag==15)//minus
            {
                label.text = " - "
                 names = String(prevnumber)+label.text!
            }
            else if (sender.tag==16)//sum
            {
                label.text = " + "
                 names = String(prevnumber)+label.text!
            }
            else if (sender.tag==20)//sum
            {
                label.text = " % "
                names = String(prevnumber)+label.text!
            }
        
            
            
            operation=sender.tag
            flag=true
           
            
        }
        else if(sender.tag == 17)
        {
            
            if operation == 13 //divide
            {
                label.text = String(prevnumber / numberonscreen)
               
            }
            else if operation == 14 //multipli
            {
                label.text = String(prevnumber * numberonscreen)
               
            }
            else if operation == 15//minus
            {
                label.text = String(prevnumber - numberonscreen)
               
            }
            else if operation == 16//sum
            {
                label.text = String(prevnumber + numberonscreen)
               
            }
            else if operation == 19//sum
            {
                label.text = String(numberonscreen * numberonscreen)
                
            }
            else if operation == 20//sum
            {
                label.text = String(prevnumber * numberonscreen / 100)
                
            }
           
            
            
           
        }
        
        if sender.tag == 10
        {
            name3 = name + "=" + label.text!
            array.append(name3)
            label.text = " "
            prevnumber=0
            numberonscreen=0
            operation=0
        }
        
        if sender.tag == 12
        {
            name3=name
            performSegue(withIdentifier: "segue", sender: self)
                
        }
        
        if sender.tag == 23
        {
            label.text = "-" + label.text!
        }
        if sender.tag == 21
        {
            label.text = String(Double(sqrt(numberonscreen)))
        }
        if sender.tag == 24
        {
            label.text = String(sin(M_PI * 2.0 * numberonscreen / 360))
        }
        
        if sender.tag == 25
        {
            label.text = String(cos(M_PI * 2.0 * numberonscreen / 360))
        }
        
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

