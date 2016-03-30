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
    private let customDelimiterIndicatorStart: String = "//"
    private let customDelimiterIndicatorEnd: String = "\n"
    private var defaultDelimiters: [String]
    private var numberString: String = ""
    
    init() {
        defaultDelimiters = [commaDelimiter, newLineDelimiter]
    }
    
    func add(numberString: String) -> Int {
        self.numberString = numberString

        let delimiters = getDelimiters()
        let splittedNumbers = split([self.numberString], WithDelimiters: delimiters)
        return sumNumbers(splittedNumbers)
    }
    
    func getDelimiters() -> [String] {
        if(hasCustomDelimiter()) {
            defaultDelimiters.append(getCustomDelimiter())
        }
        print(defaultDelimiters)
        return defaultDelimiters
    }
    
    func getCustomDelimiter() -> String {
        let range: Range = getCustomDelimiterRangeInString()
        print(numberString)
        let customDelimiter: String = numberString[range]
        numberString = numberString.substringFromIndex(range.endIndex.advancedBy(1))
        print(numberString)
        return customDelimiter
    }
    
    func getCustomDelimiterRangeInString() -> Range<String.Index> {
        let startIndex = numberString.characters.startIndex.advancedBy(2)
        let endIndex = numberString.characters.startIndex.advancedBy(3)
        // Syntax to express Range<String.Index>(start:startIndex!, end:endIndex!) in Swift 3.0
        return startIndex..<endIndex
    }
    
    func hasCustomDelimiter() -> Bool {
        let prefix: String = String(customDelimiterIndicatorStart)
        return numberString.hasPrefix(prefix)
    }
    
    func sumNumbers(numbers: [String]) -> Int {
        var counter: Int = 0
        for num in numbers {
            if(num == "") {
                continue
            }
            counter += Int(num)!
        }
        return counter
    }
    
    
    func split(numbers: [String], WithDelimiters delimiters: [String], currentDelimiter: Int = 0) -> [String] {
        print("Current delimiter value= \(currentDelimiter)")
        if currentDelimiter == delimiters.count {
            return numbers
        }
        
        return split( numbers.flatMap{ $0.componentsSeparatedByString(delimiters[currentDelimiter]) }, WithDelimiters: delimiters, currentDelimiter: currentDelimiter + 1)
    }
    
}




