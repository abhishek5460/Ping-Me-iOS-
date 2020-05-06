//
//  WelcomeViewController.swift
//  PingMe
//
//  Created by Abhishek Marriala on 28/04/20.
//  Copyright © 2020 Abhishek Marriala. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text=""
        let myLable = "Ping Me 📭"
        var labelIndex = 0.0
        
        for letter in myLable{
            Timer.scheduledTimer(withTimeInterval: 0.2*labelIndex, repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }
            labelIndex+=1
        }
        
       
    }
    

}
