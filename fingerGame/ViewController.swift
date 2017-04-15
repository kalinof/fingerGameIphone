//
//  ViewController.swift
//  fingerGame
//
//  Created by Valentin Kalinov on 20/12/2016.
//  Copyright © 2016 Valentin Kalinov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textFiled: UITextField!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBAction func button(_ sender: Any) {
        
        var diceRoll = Int(arc4random_uniform(6))
        
        let age = Int(textFiled.text!)!
        
        if age == diceRoll {
        
        answerLabel.text = "You are right!"
        
        }else if age > 5 {
        
        answerLabel.text = "Enter a number between 0 and 5"
        }else {
        
        answerLabel.text = "Try again!"
        }
        
        
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

