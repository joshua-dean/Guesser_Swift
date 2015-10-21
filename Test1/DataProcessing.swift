//
//  DataProcessing.swift
//  Test1
//
//  Created by DEAN, JOSHUA on 9/18/15.
//  Copyright © 2015 Josh. All rights reserved.
//

import Foundation

let defaults = NSUserDefaults.standardUserDefaults()
let nolevel = -42.0

//Stores a double with a name identifier
func storeDouble(name: String, value: Double)
{
    defaults.setValue(String(value), forKey: name);
    defaults.synchronize()
}
//Retrieves a stored double, using the name it was stored as
func retrieveDouble(name: String) -> Double?
{
    if let potatoe = defaults.valueForKey(name)
    {
        return potatoe.doubleValue
    }
    return nolevel
}
//Stores a boolean with a name identifier
func storeBool(name: String, value: Bool)
{
    defaults.setValue(String(value), forKey: name)
    defaults.synchronize()
}
//Retrieves a stored boolean, using the name it was stored as
func retrieveBool(name: String) -> Bool?
{
    if let tempBool = defaults.valueForKey(name)
    {
        return tempBool.boolValue
    }
    return false
}
//Stores a boolean array with a name identifier
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
//Retrieves a stored boolean array, using the name it was stored as
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













