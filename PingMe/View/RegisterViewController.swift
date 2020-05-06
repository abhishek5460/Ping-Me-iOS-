//
//  RegisterViewController.swift
//  PingMe
//
//  Created by Abhishek Marriala on 28/04/20.
//  Copyright © 2020 Abhishek Marriala. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!

    
    @IBAction func registerPressed(_ sender: UIButton)
    {
        if let email = emailTextfield.text, let password = passwordTextfield.text{
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let error = error{
                print(error)
            }
            else{
                print("Hello")
                self.performSegue(withIdentifier: "RegisterToChat", sender: self)
            }
        }
    }
    }
    
}

