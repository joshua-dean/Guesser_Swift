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

func calculateGuess(realnumber: Int, guessnumber: Int) -> String
{
    var adjust = "Correct!"
    if guessnumber > realnumber
    {
        adjust = "Lower"
    }
    if guessnumber < realnumber
    {
        adjust = "Higher"
    }
    return adjust
}

func getAllDaShaqs() -> Double
{
    var shaqamount = retrieveDouble("Shaq")
    if shaqamount == -42.0
    {
        storeDouble("Shaq", value: 0)
        shaqamount = 0.0
    }
    return shaqamount!
}

func getAllDaLevels() -> Double
{
    var levelamount = retrieveDouble("Level")
    if levelamount == -42.0
    {
        storeDouble("Level", value: 1)
        levelamount = 1.0
    }
    return levelamount!
}

func getAllDaKobes() -> Double
{
    var kobeamount = retrieveDouble("Kobe")
    if kobeamount == -42.0
    {
        storeDouble("Kobe", value: 0)
        kobeamount = 0.0
    }
    return kobeamount!
}

func storeEverything(shaqs: Double, kobes: Double, level: Double, statarray: [Double], achievementsarray: [String])
{
    storeDouble("Shaq", value: shaqs)
    storeDouble("Kobe", value: kobes)
    storeDouble("Level", value: level)
    storeDoubleArray("Stats", valArray: statarray)
    storeStringArray("Achievements", valArray: achievementsarray)
}

func getStatsArrays() -> [Double]
{
    var statarray = retrieveDoubleArray("Stats")
    if statarray.count == 0
    {
        let temparray = [Double](count: 100, repeatedValue: 0.0)
        storeDoubleArray("Stats", valArray: temparray)
        statarray = temparray
    }
    return statarray
}

func getAcheiveArrays() -> [[String]]
{
    var statarray = retrieveObjectArray("Achievements") as! [[String]]
    if statarray.count == 0
    {
        let temparray = daOriginalAchieveArray()
        storeObjectArray("Achievements", valArray: temparray)
        statarray = temparray
    }
    return statarray
}

func getStatNameArray() -> [String]
{
    var namearray = retrieveStringArray("StatNames")
    if namearray.count == 0
    {
        let temparray = [String](count: 100, repeatedValue: "")
        storeStringArray("StatNames", valArray: temparray)
        namearray = temparray
    }
    return namearray
}

func daOriginalAchieveArray() -> [[String]]
{
    let fillerarray = [String](count: 3, repeatedValue: "")
    var temparray = [[String]](count: 100, repeatedValue: fillerarray)
    temparray[0][0] = ""
    temparray[0][2] = "Guess 100 times"
    temparray[1][0] = ""
    temparray[1][2] = "Guess 500 times"
    temparray[2][0] = ""
    temparray[2][2] = "Guess 1k   times"
    var i: Int
    for i = 0; i < 5; ++i{
        temparray[i][1] = "No"
    }
    return temparray
}

func daStatNameArray() -> [String]
{
    var temparray = [String](count: 100, repeatedValue: "")
    temparray[0] = "Total Guesses"
    temparray[1] = "Total Correct Guesses"
    temparray[2] = "Total Shaqs Earned"
    temparray[3] = "Time Played(Minutes)"
    temparray[3] = "# of times Kobe’s were bought"
    return temparray
}






