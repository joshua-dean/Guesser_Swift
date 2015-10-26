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
    var daChieves: [[String]] = []
    var arraylocvalue = 0
    let LOWEST_ARRAY_LOCATION = 0
    let HIGHEST_ARRAY_LOCATION = 2
    
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
    @IBOutlet weak var Stat1: UILabel!
    @IBOutlet weak var Stat2: UILabel!
    @IBOutlet weak var Stat3: UILabel!
    @IBOutlet weak var Stat4: UILabel!
    @IBOutlet weak var Stat5: UILabel!
    
    @IBOutlet weak var Value1: UILabel!
    @IBOutlet weak var Value2: UILabel!
    @IBOutlet weak var Value3: UILabel!
    @IBOutlet weak var Value4: UILabel!
    @IBOutlet weak var Value5: UILabel!
    
    @IBAction func Previous(sender: AnyObject) {
        if (arraylocvalue - 5) >= (LOWEST_ARRAY_LOCATION)
        {
            arraylocvalue = arraylocvalue - 5
        }
        Stat1.text = daStatNames[0 + arraylocvalue]
        Stat2.text = daStatNames[1 + arraylocvalue]
        Stat3.text = daStatNames[2 + arraylocvalue]
        Stat4.text = daStatNames[3 + arraylocvalue]
        Stat5.text = daStatNames[4 + arraylocvalue]
        
        Value1.text = String(daStats[0 + arraylocvalue])
        Value2.text = String(daStats[1 + arraylocvalue])
        Value3.text = String(daStats[2 + arraylocvalue])
        Value4.text = String(daStats[3 + arraylocvalue])
        Value5.text = String(daStats[4 + arraylocvalue])
    }
    
    @IBAction func Next(sender: AnyObject) {
        if (arraylocvalue + 5) <= (HIGHEST_ARRAY_LOCATION)
        {
            arraylocvalue = arraylocvalue + 5
        }
        Stat1.text = daStatNames[0 + arraylocvalue]
        Stat2.text = daStatNames[1 + arraylocvalue]
        Stat3.text = daStatNames[2 + arraylocvalue]
        Stat4.text = daStatNames[3 + arraylocvalue]
        Stat5.text = daStatNames[4 + arraylocvalue]
        
        Value1.text = String(daStats[0 + arraylocvalue])
        Value2.text = String(daStats[1 + arraylocvalue])
        Value3.text = String(daStats[2 + arraylocvalue])
        Value4.text = String(daStats[3 + arraylocvalue])
        Value5.text = String(daStats[4 + arraylocvalue])
    }
}
