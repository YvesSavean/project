//
//  Math.swift
//  project
//
//  Created by Savean on 07/10/2014.
//  Copyright (c) 2014 Savean. All rights reserved.
//

import Foundation


class Math {
    var num1 = 0
    var num2 = 0
    var signe = 0
    
    init(){
        Rand()
    }
    
    func Rand(){
         num1 = Int(arc4random_uniform(10))
         num2 = Int(arc4random_uniform(10))
         signe = Int(arc4random_uniform(4))
    }
    
    func getNum1()->Int{
        return num1
    }
    func getNum2()->Int{
        return num2
    }
    func getSigne()->Int{
        return signe
    }
    
}
