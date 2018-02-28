//
//  ViewController.swift
//  C0727631_MidTerm_MADT2018
//
//  Created by MacStudent on 2018-02-28.
//  Copyright © 2018 MADT - Romulo Moura. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    

    @IBOutlet weak var signinBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  
    @IBAction func signinBtnClick(_ sender: UIButton) {
    
        if(emailText.text == "abc@gmail.com" && passwordText.text == "123")
        {
            
           let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let stdViewController = storyBoard.instantiateViewController(withIdentifier: "studentDATA") as! StudentEntryViewController
            self.present(stdViewController, animated: true, completion: nil)
        }
        else
        {
           let alert = UIAlertController(title: "Login Failed", message: "Invalid email or password", preferredStyle: UIAlertControllerStyle.alert);
            let actionOk = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil);
            alert.addAction(actionOk);
            
            self.present(alert, animated: true, completion: nil);
        }
    
    }
    
}





