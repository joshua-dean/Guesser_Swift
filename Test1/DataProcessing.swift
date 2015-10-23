//
//  DataProcessing.swift
//  Test1
//
//  Created by DEAN, JOSHUA on 9/18/15.
//  Copyright © 2015 Josh. All rights reserved.

////////////////////////////////////////////////////////////////////////////////////////
//                        Small 'library' for storing data                            //
//                                                                                    //
//  Store Functions    -> Store Data using String identifier, usually called 'name'   //
//  Retrieve Functions -> Retrieve data using previously declared String identifier   //
//  Invalid Values     -> Values Returned if no value was stored, change these to     //
//                      > set a 'default' value for data types                        //
//  Currently Supported-> Double, String, Bool, [String], [Bool], [Double]            //
//                                                                                    //
////////////////////////////////////////////////////////////////////////////////////////


import Foundation

let defaults = NSUserDefaults.standardUserDefaults()

//Invalid Values
let invDouble = -42.0
let invString = ""
let invBool   = false
let invArray  = []

func storeDouble(name: String, value: Double)
{
    defaults.setValue(String(value), forKey: name);
    defaults.synchronize()
}

func retrieveDouble(name: String) -> Double?
{
    if let potatoe = defaults.valueForKey(name)
    {
        return potatoe.doubleValue
    }
    return invDouble //returned if you try to retrieve a value that doesn't exist
}


func storeBool(name: String, value: Bool)
{
    defaults.setValue(String(value), forKey: name)
    defaults.synchronize()
}

func retrieveBool(name: String) -> Bool?
{
    if let tempBool = defaults.valueForKey(name)
    {
        return tempBool.boolValue
    }
    return invBool //returned if you try to retrieve a value that doesn't exist
}


func storeString(name: String, value: String)
{
    defaults.setValue(value, forKey: name)
    defaults.synchronize()
}

func retrieveString(name: String) -> String?
{
    if let tempString = defaults.valueForKey(name)
    {
        return tempString.string
    }
    return invString //returned if you try to retrieve a value that doesn't exist
}

func storeBoolArray(name: String, valArray: [Bool])
{
    defaults.setValue(valArray, forKey: name)
    defaults.synchronize()
}
func retrieveBoolArray(name: String) -> [Bool]
{
    if let temp = defaults.valueForKey(name) as? [Bool]
    {return temp}
    return invArray as! [Bool] //blank array returned if not valid
}

func storeStringArray(name: String, valArray: [String])
{
    defaults.setValue(valArray, forKey: name)
    defaults.synchronize()
}
func retrieveStringArray(name: String) -> [String]
{
    if let temp = defaults.valueForKey(name) as? [String]
    {return temp}
    return invArray as! [String] //blank array returned if not valid
}

func storeDoubleArray(name: String, valArray: [Double])
{
    defaults.setValue(valArray, forKey: name)
    defaults.synchronize()
}
func retrieveDoubleArray(name: String) -> [Double]
{
    if let temp = defaults.valueForKey(name) as? [Double]
    {return temp}
    return invArray as! [Double] //blank array returned if not valid
}

















