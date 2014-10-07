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
        var mesValeurs = Math()
        lblNum1.text = "\(mesValeurs.getNum1())"
        lblNum2.text = "\(mesValeurs.getNum2())"
        lblSign.text = "\(tab[mesValeurs.getSigne()])"
        if mesValeurs.getSigne() == 0 {
            results = mesValeurs.getNum1() + mesValeurs.getNum2()
        }
        if mesValeurs.getSigne() == 1 {
            results = mesValeurs.getNum1() - mesValeurs.getNum2()
        }
        if mesValeurs.getSigne() == 2 {
            results = mesValeurs.getNum1() * mesValeurs.getNum2()
        }
        if mesValeurs.getSigne() == 3 {
            results = mesValeurs.getNum1() / mesValeurs.getNum2()
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

