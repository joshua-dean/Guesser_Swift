//
//  AchievementViewController.swift
//  Test1
//
//  Created by WENDOLEK, CONNOR on 11/2/15.
//  Copyright © 2015 Josh. All rights reserved.
//

import Foundation

import UIKit

class AchievementViewController: UIViewController {
    
    var daStats: [Double] = []
    var daChieves: [[String]] = []
    var arraylocvalue = 0
    var userlevel = 0.0
    let LOWEST_ARRAY_LOCATION = 0
    let HIGHEST_ARRAY_LOCATION = 15

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        daChieves = getAcheiveArrays()
        daStats = getStatsArrays()
        userlevel = getAllDaLevels()
        checkAchievements()
        updateText()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet weak var Ach1: UILabel!
    @IBOutlet weak var Ach2: UILabel!
    @IBOutlet weak var Ach3: UILabel!
    @IBOutlet weak var Ach4: UILabel!
    @IBOutlet weak var Ach5: UILabel!
    
    @IBOutlet weak var Val1: UILabel!
    @IBOutlet weak var Val2: UILabel!
    @IBOutlet weak var Val3: UILabel!
    @IBOutlet weak var Val4: UILabel!
    @IBOutlet weak var Val5: UILabel!
    
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
    
    
    func updateText()
    {
        Ach1.text = daChieves[0 + arraylocvalue][2]
        Ach2.text = daChieves[1 + arraylocvalue][2]
        Ach3.text = daChieves[2 + arraylocvalue][2]
        Ach4.text = daChieves[3 + arraylocvalue][2]
        Ach5.text = daChieves[4 + arraylocvalue][2]
        
        Val1.text = daChieves[0 + arraylocvalue][1]
        Val2.text = daChieves[1 + arraylocvalue][1]
        Val3.text = daChieves[2 + arraylocvalue][1]
        Val4.text = daChieves[3 + arraylocvalue][1]
        Val5.text = daChieves[4 + arraylocvalue][1]
    }
    
    func checkAchievements()
    {
        if daChieves[0][1] == "No"
        {
            if daStats[0] > 99
            {
                daChieves[0][1] = "Yes"
                storeObjectArray("Achievements", valArray: daChieves)
            }
        }
        if daChieves[1][1] == "No"
        {
            if daStats[0] > 499
            {
                daChieves[1][1] = "Yes"
                storeObjectArray("Achievements", valArray: daChieves)
            }
        }
        if daChieves[2][1] == "No"
        {
            if daStats[0] > 999
            {
                daChieves[2][1] = "Yes"
                storeObjectArray("Achievements", valArray: daChieves)
            }
        }
        if daChieves[11][1] == "No"
        {
            if daStats[0] > 4999
            {
                daChieves[11][1] = "Yes"
                storeObjectArray("Achievements", valArray: daChieves)
            }
        }
        if daChieves[12][1] == "No"
        {
            if daStats[0] > 9999
            {
                daChieves[12][1] = "Yes"
                storeObjectArray("Achievements", valArray: daChieves)
            }
        }
        if daChieves[13][1] == "No"
        {
            if daStats[0] > 49999
            {
                daChieves[13][1] = "Yes"
                storeObjectArray("Achievements", valArray: daChieves)
            }
        }
        if daChieves[14][1] == "No"
        {
            if daStats[0] > 99999
            {
                daChieves[14][1] = "Yes"
                storeObjectArray("Achievements", valArray: daChieves)
            }
        }
        if daChieves[3][1] == "No"
        {
            if userlevel > 4
            {
                daChieves[3][1] = "Yes"
                storeObjectArray("Achievements", valArray: daChieves)
            }
        }
        if daChieves[4][1] == "No"
        {
            if userlevel > 9
            {
                daChieves[4][1] = "Yes"
                storeObjectArray("Achievements", valArray: daChieves)
            }
        }
        if daChieves[5][1] == "No"
        {
            if userlevel > 19
            {
                daChieves[5][1] = "Yes"
                storeObjectArray("Achievements", valArray: daChieves)
            }
        }
        if daChieves[6][1] == "No"
        {
            if userlevel > 49
            {
                daChieves[6][1] = "Yes"
                storeObjectArray("Achievements", valArray: daChieves)
            }
        }
        if daChieves[7][1] == "No"
        {
            if userlevel > 74
            {
                daChieves[7][1] = "Yes"
                storeObjectArray("Achievements", valArray: daChieves)
            }
        }
        if daChieves[8][1] == "No"
        {
            if userlevel > 99
            {
                daChieves[8][1] = "Yes"
                storeObjectArray("Achievements", valArray: daChieves)
            }
        }
        if daChieves[15][1] == "No"
        {
            if daStats[4] > 9
            {
                daChieves[15][1] = "Yes"
                storeObjectArray("Achievements", valArray: daChieves)
            }
        }
        if daChieves[16][1] == "No"
        {
            if daStats[4] > 49
            {
                daChieves[16][1] = "Yes"
                storeObjectArray("Achievements", valArray: daChieves)
            }
        }
        if daChieves[17][1] == "No"
        {
            if daStats[4] > 99
            {
                daChieves[17][1] = "Yes"
                storeObjectArray("Achievements", valArray: daChieves)
            }
        }
        if daChieves[9][1] == "No" && userlevel > 1
        {
            daChieves[9][1] = "Yes"
            storeObjectArray("Achievements", valArray: daChieves)
        }
    }
    
}
