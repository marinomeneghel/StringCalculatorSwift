//
//  StringCalculator.swift
//  StringCalculatorKata
//
//  Created by Marino Meneghel on 3/29/16.
//  Copyright © 2016 Marino Meneghel. All rights reserved.
//

import Foundation
class StringCalculator {
    
    func add(numberString: String) -> Int {
        if (numberString.characters.count == 1) {
            return Int(numberString)!
        
        } else if (numberString.characters.count == 3) {
            let numbers = numberString.componentsSeparatedByString(",")
            print("Num pos 0= \(numbers[0]) pos 1= \(numbers[1])")
            return Int(numbers[0])! + Int(numbers[1])!
            
            
        } else {
            return 0
        }
    }
    
}