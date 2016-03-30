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
    
    let stringCalculator: StringCalculator = StringCalculator()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testEmptyStringReturnsZero() {
        XCTAssertEqual(0, stringCalculator.add(""))
    }
    
    func testPassOneNumberReturnsItsValue() {
        XCTAssertEqual(1, stringCalculator.add("1"))
    }
    
    func testTwoNumbersArgumentReturnsSum() {
        XCTAssertEqual(3, stringCalculator.add("1,2"))
    }

    
    func testArbitraryNumberOfArgumentsReturnsSum() {
        XCTAssertEqual(6, stringCalculator.add("1,2,3"))
    }
    
    
    func testNewLineIsValidAsSeparator() {
        XCTAssertEqual(6, stringCalculator.add("1\n2,3"))
        XCTAssertEqual(10, stringCalculator.add("1\n2\n3\n4"))
    }
    
    func testCustomDelimitersAreSupported() {
        XCTAssertEqual(12, stringCalculator.add("//;\n1;2;3;6"))
    }
    
    func testMixedDelimiters() {
        XCTAssertEqual(12, stringCalculator.add("//$\n1$2,3\n6"))
    }
    
    func testPassNegativeNumberLaunchException() {
        XCTAssertEqual(-1, stringCalculator.add("-1,2,3"))
    }
    
}

