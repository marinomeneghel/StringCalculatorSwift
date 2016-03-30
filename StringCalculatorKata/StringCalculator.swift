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
        if (numberString.characters.count == 0) {
            return 0
        }
        
        let numbers = numberString.componentsSeparatedByString(",")
        print(String(numbers))
        return sumNumbers(numbers)
    }
    
    var counter: Int = 0
    
    func sumNumbers(var numbers: [String]) -> Int {
        for num in numbers {
            if(num.containsString("\n")) {
                numbers.removeAtIndex(numbers.indexOf(num)!)
                numbers.appendContentsOf(num.componentsSeparatedByString("\n"))
                return sumNumbers(numbers)
            }
            numbers.removeAtIndex(numbers.indexOf(num)!)
            return Int(num)! + sumNumbers(numbers)
        }
        return 0
    }
    
    
}