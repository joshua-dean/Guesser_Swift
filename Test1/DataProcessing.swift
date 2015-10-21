//
//  DataProcessing.swift
//  Test1
//
//  Created by DEAN, JOSHUA on 9/18/15.
//  Copyright © 2015 Josh. All rights reserved.

////////////////////////////////////////////////////////////////////////////////////////
//                      Small 'library' for storing data                              //
//                                                                                    //
//  "store" functions store data with a string identifier                             //
//  "retrieve" functions retrieve data with the string identifier it was stored as    //
////////////////////////////////////////////////////////////////////////////////////////


import Foundation

let defaults = NSUserDefaults.standardUserDefaults()
let nolevel = -42.0


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
    return nolevel
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
    return false
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
    return ""
}


func storeBoolArray(name: String, valArray: [Bool])
{
    var tempStore: [NSString]
    tempStore = []
    for i in 0...valArray.count-1
    {
        tempStore.append(String(valArray[i]))
    }
    defaults.setValue(tempStore, forKey: name)
    defaults.synchronize()
}

func retrieveBoolArray(name: String) -> [Bool]?
{
    let tempRet: [NSString]
    tempRet = defaults.valueForKey(name)! as! [NSString] //force unwrap to type NSString
    var tempStore: [Bool]
    tempStore = []
    for i in 0...tempRet.count-1
    {
        tempStore.append(tempRet[i].boolValue)
    }
    return tempStore
}













