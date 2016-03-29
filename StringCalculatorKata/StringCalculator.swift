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
        
        } else if (numberString.characters.count > 1) {
            
            let numbers = numberString.componentsSeparatedByString(",")
            var counter: Int = 0
            for num in numbers {
                counter += Int(num)!
            }
            return counter
        }
        
        return 0
    }
    
}