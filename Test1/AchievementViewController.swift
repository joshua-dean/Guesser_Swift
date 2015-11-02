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
    
    var daChieves: [[String]] = []
    var arraylocvalue = 0
    let LOWEST_ARRAY_LOCATION = 0
    let HIGHEST_ARRAY_LOCATION = 5

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        daChieves = getAcheiveArrays()
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
    
}
