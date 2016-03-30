//
//  StringCalculator.swift
//  StringCalculatorKata
//
//  Created by Marino Meneghel on 3/29/16.
//  Copyright © 2016 Marino Meneghel. All rights reserved.
//

import Foundation
class StringCalculator {
    
    private let commaDelimiter: String = ","
    private let newLineDelimiter: String = "\n"
    private let defaultDelimiters: [String]
    
    init() {
        defaultDelimiters = [commaDelimiter, newLineDelimiter]
    }
    
    func add(numberString: String) -> Int {
        if (numberString.characters.count == 0) {
            return 0
        }
        
        let splittedNumbers = split([numberString], WithDelimiters: defaultDelimiters)
        return sumNumbers(splittedNumbers)
    }
    
    
    func sumNumbers(numbers: [String]) -> Int {
        var counter: Int = 0
        for num in numbers {
            counter += Int(num)!
        }
        return counter
    }
    
    
    func split(numbers: [String], WithDelimiters delimiters: [String], currentDelimiter: Int = 0) -> [String] {
        print("Current delimiter value= \(currentDelimiter)")
        if currentDelimiter == delimiters.count {
            print("This never happens right? \(numbers)")
            return numbers
        }
        
        return split( numbers.flatMap{ $0.componentsSeparatedByString(delimiters[currentDelimiter]) }, WithDelimiters: delimiters, currentDelimiter: currentDelimiter + 1)
    }
    
}




