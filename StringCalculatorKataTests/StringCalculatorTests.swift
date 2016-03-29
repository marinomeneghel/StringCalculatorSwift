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
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testEmptyStringReturnsZero() {
        var stringCalculator = StringCalculator()
        XCTAssertEqual(0, stringCalculator.add(""))
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
