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
    
    var daStats = [Double](count: 100, repeatedValue: 0.0)
    var daStatNames: [String] = []
    var daChieves: [[String]] = []
    var arraylocvalue = 0
    let LOWEST_ARRAY_LOCATION = 0
    let HIGHEST_ARRAY_LOCATION = 5
    
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
        updateText()
        _ = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "addTime", userInfo: nil, repeats: true) // calls addTime() every second
    }
    
    func addTime()
    {
        daStats[3]++
        updateText()
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
            updateText()
        }
    }
    
    @IBAction func Next(sender: AnyObject) {
        if (arraylocvalue + 5) <= (HIGHEST_ARRAY_LOCATION)
        {
            arraylocvalue = arraylocvalue + 5
            updateText()
        }
    }
    
    /*
    each square is 56 wide and 53 tall
    */
    
    func updateText()
    {
        Stat1.text = daStatNames[0 + arraylocvalue]
        Stat2.text = daStatNames[1 + arraylocvalue]
        Stat3.text = daStatNames[2 + arraylocvalue]
        Stat4.text = daStatNames[3 + arraylocvalue]
        Stat5.text = daStatNames[4 + arraylocvalue]
        
        Value1.text = ((daStats[0 + arraylocvalue] % 1 == 0) ? String(Int(daStats[0 + arraylocvalue])) : String(round(1000 * daStats[0 + arraylocvalue]) / 1000))
        Value2.text = ((daStats[1 + arraylocvalue] % 1 == 0) ? String(Int(daStats[1 + arraylocvalue])) : String(round(1000 * daStats[1 + arraylocvalue]) / 1000))
        Value3.text = ((daStats[2 + arraylocvalue] % 1 == 0) ? String(Int(daStats[2 + arraylocvalue])) : String(round(1000 * daStats[2 + arraylocvalue]) / 1000))
        if(arraylocvalue != 0)
        {
            Value4.text = ((daStats[3 + arraylocvalue] % 1 == 0) ? String(Int(daStats[3 + arraylocvalue])) : String(round(1000 * daStats[3 + arraylocvalue]) / 1000))
        }
        else
        {
            var temp = String(Int(daStats[3] % 60))
            if temp.characters.count == 1
            {
                temp = "0" + temp
            }
            Value4.text = String(Int(daStats[3] / 60)) + ":" + temp
        }
        Value5.text = ((daStats[4 + arraylocvalue] % 1 == 0) ? String(Int(daStats[4 + arraylocvalue])) : String(round(1000 * daStats[4 + arraylocvalue]) / 1000))
    }
    
    @IBAction func BackButton(sender: AnyObject) {
        storeDoubleArray("Stats", valArray: daStats)
    }
}
