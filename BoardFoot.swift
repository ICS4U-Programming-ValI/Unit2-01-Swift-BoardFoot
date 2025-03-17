import Foundation

//
//  BoardFoot.swift
//
//  Created by Val I on 2025-03-01.
//  Version 1.0
//  Copyright (c) 2025 Val I. All rights reserved.
//
//  The LineEquation program asks the user for which value they want to calculate
//  then gets 3 of the following:,
//  x, y, slope, and y-intercept. It then calculates the missing value.
//

enum InputError: Error {
    case invalidNumber
}

func calculateBoardFoot(width: Float, height: Float) -> Float {
    let volume: Float = 144.0
    return volume / (width * height)
}
var width: Float = 0.0
var height: Float = 0.0
print("This program calculates the length needed to make the volume 144")
print("When given the height and width.")

do {
    print("What's the height?")
    let heightStr = readLine()!
    guard let height = Float(heightStr), height > 0 else {
        throw InputError.invalidNumber
    }


    print("What's the width?")
    let widthStr = readLine()!
    guard let width = Float(widthStr), width > 0 else {
        throw InputError.invalidNumber
    }
    let length = calculateBoardFoot(width: width, height: height)
    print("The required length is \(length) units." )
} catch {
    print("input should a number and greater than zero.")
}
