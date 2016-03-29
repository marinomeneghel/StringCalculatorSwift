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
    
    func testTwoNumerArgumentReturnsSum() {
        XCTAssertEqual(3, stringCalculator.add("1,2"))
    }
    
}
