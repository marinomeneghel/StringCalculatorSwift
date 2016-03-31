//
//  ErrorType.swift
//  StringCalculatorKata
//
//  Created by Marino Meneghel on 3/31/16.
//  Copyright © 2016 Marino Meneghel. All rights reserved.
//
enum StringCalculatorError : ErrorType {
    case NegativeNumberNotAllowedError(negativeNumbers: [Int])
}