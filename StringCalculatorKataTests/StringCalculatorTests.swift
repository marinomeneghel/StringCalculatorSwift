//
//  StringCalculatorKataTests.swift
//  StringCalculatorKataTests
//
//  Created by Marino Meneghel on 3/29/16.
//  Copyright © 2016 Marino Meneghel. All rights reserved.
//

import XCTest
@testable import StringCalculatorKata

class StringCalculatorTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testEmptyStringReturnsZero() {
        assertCalculation(0, input: "")
    }

    func testPassOneNumberReturnsItsValue() {
        assertCalculation(1, input: "1")
    }

    func testTwoNumbersArgumentReturnsSum() {
        assertCalculation(3, input: "1,2")
    }

    
    func testArbitraryNumberOfArgumentsReturnsSum() {
        assertCalculation(6, input: "1,2,3")
    }

    
    func testNewLineIsValidAsSeparator() {
        assertCalculation(6, input: "1\n2,3")
        assertCalculation(10, input: "1\n2\n3\n4")
    }

    func testCustomDelimitersAreSupported() {
        assertCalculation(12, input: "//;\n1;2;3;6")
    }
    
    func testMixedDelimiters() {
        assertCalculation(12, input: "//$\n1$2,3\n6")
    }
    
    func testPassNegativeNumberLaunchException() {
        XCTAssertEqual(assertCalculation(-2, input: "1,-2,3"), [-2])
    }
    
    func assertCalculation(expected: Int, input: String) -> [Int] {
        do {
            let stringCalculator = StringCalculator(numbers: input)
            let result = try stringCalculator.add()
            XCTAssertEqual(expected, result)
            
        } catch StringCalculatorError.NegativeNumberNotAllowedError(let negativeNumbers) {
            print(negativeNumbers)
            return negativeNumbers
        
        } catch {
            
        }
        return [Int]()
    }
    
    
    
}






