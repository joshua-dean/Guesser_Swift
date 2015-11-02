//
//  ShaqsNKobes.swift
//  Test1
//
//  Created by WENDOLEK, CONNOR on 9/18/15.
//  Copyright © 2015 Josh. All rights reserved.
//

import Foundation
import Darwin

let HIGH_TEXT_IN_ARRAY = 10

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
    else
    {
        var emptyarrayloc = 0
        for var i = 0; i < statarray.count; ++i{
            if statarray[i][2] == ""
            {
                emptyarrayloc = i
                break
            }
        }
        if emptyarrayloc < HIGH_TEXT_IN_ARRAY
        {
            let temparray = daOriginalAchieveArray()
            for var i = emptyarrayloc; i < HIGH_TEXT_IN_ARRAY; ++i
            {
                statarray[i][0] = temparray[i][0]
                statarray[i][1] = temparray[i][1]
                statarray[i][2] = temparray[i][2]
            }
        }
    }
    return statarray
}

func getStatNameArray() -> [String]
{
    var namearray = retrieveStringArray("StatNames")
    let temparray = daStatNameArray()
    storeStringArray("StatNames", valArray: temparray)
    namearray = temparray
    if namearray.count == 0
    {
        
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
    temparray[3][0] = ""
    temparray[3][2] = "Reach Level 5"
    temparray[4][0] = ""
    temparray[4][2] = "Reach Level 10"
    temparray[5][0] = ""
    temparray[5][2] = "Reach Level 20"
    temparray[6][0] = ""
    temparray[6][2] = "Reach Level 50"
    temparray[7][0] = ""
    temparray[7][2] = "Reach Level 75"
    temparray[8][0] = ""
    temparray[8][2] = "Reach Level 100"
    var i: Int
    for i = 0; i < 50; ++i{
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
    temparray[3] = "Time Played"
    temparray[4] = "Times buying Kobe's"
    temparray[5] = "Average Kobe's per buy"
    temparray[6] = "Correct Guess %"
    return temparray
}






