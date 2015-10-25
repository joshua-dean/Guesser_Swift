//
//  StatsViewController.swift
//  Test1
//
//  Created by Sam Wendolek on 10/24/15.
//  Copyright © 2015 Josh. All rights reserved.
//

import Foundation

import UIKit

class StatsViewController: UIViewController {
    
    var daStats: [Double] = []
    var daStatNames: [String] = []
    var daChieves: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /* Debug for data Storage
        var potatoe = "cheese"
        storeObject("potatoe", value: potatoe)
        potatoe = "bacon"
        potatoe = retrieveObject("potatoe") as! String
        print(potatoe)
        */
        daStats = getStatsArrays()
        daStatNames = getStatNameArray()
        daChieves = getAcheiveArrays()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }
    
}