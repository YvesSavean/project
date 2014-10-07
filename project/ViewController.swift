//
//  ViewController.swift
//  project
//
//  Created by Savean on 07/10/2014.
//  Copyright (c) 2014 Savean. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var lblNum1: UILabel!
    @IBOutlet var lblSign: UILabel!
    @IBOutlet var lblNum2: UILabel!
    @IBOutlet var txtReponse: UITextView!
    var results = 0
    var tab = ["+","-","*","/"]
    override func viewDidLoad() {
        super.viewDidLoad()
        Rand()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func Rand(){
        let num1 = Int(arc4random_uniform(10))
        let num2 = Int(arc4random_uniform(10))
        let valeurSign = Int(arc4random_uniform(4))
        lblNum1.text = "\(num1)"
        lblNum2.text = "\(num2)"
        lblSign.text = "\(tab[valeurSign])"
        if valeurSign == 0 {
            results = num1 + num2
        }
        if valeurSign == 1 {
            results = num1 - num2
        }
        if valeurSign == 2 {
            results = num1 * num2
        }
        if valeurSign == 3 {
            results = num1 / num2
        }
        
    }

    @IBAction func valider(sender: AnyObject) {
        if txtReponse.text.toInt() == results {
            Rand()
        }
        else{
            txtReponse.text = "false"
        }
    }

}

