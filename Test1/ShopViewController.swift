//
//  ShopViewController.swift
//  Test1
//
//  Created by DEAN, JOSHUA on 9/21/15.
//  Copyright © 2015 Josh. All rights reserved.
//

import UIKit

class ShopViewController: UIViewController {
    
    var theshaqs = 0
    var thekobes = 0
    var randomnumber = 0
    var daStats = [Double](count: 100, repeatedValue: 0.0)
    var daChieves: [[String]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        theshaqs = Int(getAllDaShaqs())
        thekobes = Int(getAllDaKobes())
        DaShaqAmount.text = String(theshaqs)
        DaKobeAmount.text = String(thekobes)
        daStats = getStatsArrays()
        daChieves = getAcheiveArrays()
        _ = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "addTime", userInfo: nil, repeats: true)
    }
    
    func addTime()
    {
        daStats[3] += 1
        storeDoubleArray("Stats", valArray: daStats)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var DaShaqAmount: UILabel!
    @IBOutlet weak var DaKobeAmount: UILabel!
    @IBOutlet weak var BuyKobeAmount: UILabel!
    
    @IBAction func BuyDaKobe(sender: AnyObject) {
        if theshaqs > 999
        {
            daStats[4]++
            theshaqs -= 1000
            randomnumber = Int(arc4random_uniform(1000))
            randomnumber++
            thekobes += randomnumber
            storeDouble("Shaq", value: Double(theshaqs))
            storeDouble("Kobe", value: Double(thekobes))
            BuyKobeAmount.text = ("You got \(randomnumber) Kobes!")
            theshaqs = Int(getAllDaShaqs())
            thekobes = Int(getAllDaKobes())
            DaShaqAmount.text = String(theshaqs)
            DaKobeAmount.text = String(thekobes)
            daStats[5] = (daStats[4] / getAllDaKobes())
            storeDoubleArray("Stats", valArray: daStats)
        }
        else
        {
            BuyKobeAmount.text = "Not enough Shaqs"
        }
    }
    
    func updateStats(arraylocation: Int, updatevalue: Double)
    {
        daStats = getStatsArrays()
        daStats[arraylocation] = daStats[arraylocation] + updatevalue
        storeDoubleArray("Stats", valArray: daStats)
    }
    
    
}
