//
//  ShaqsNKobes.swift
//  Test1
//
//  Created by WENDOLEK, CONNOR on 9/18/15.
//  Copyright © 2015 Josh. All rights reserved.
//

import Foundation
import Darwin

func calculateShaqs(guesses: Int, level: Int) -> Int
{
    var shaqs = 0
    shaqs = level - guesses
    if guesses == 1
    {
        shaqs = shaqs * 2
    }
    return shaqs
}

func generateNumber(level: UInt32) -> Int
{
    var number = 0
    number = Int(arc4random_uniform(level))
    number++
    return number
}