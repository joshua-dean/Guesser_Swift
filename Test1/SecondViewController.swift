//
//  SecondViewController.swift
//  Test1
//
//  Created by WENDOLEK, CONNOR on 9/17/15.
//  Copyright © 2015 Josh. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var numberguessed = 0
    var numberlength = 0
    var numberlabel = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var TheNumber: UILabel!
    
    @IBAction func Add0(sender: AnyObject) {
        numberlabel = numberlabel + "0"
        TheNumber.text = numberlabel
    }
    
    @IBAction func Add1(sender: AnyObject) {
        numberlabel = numberlabel + "1"
        TheNumber.text = numberlabel
    }
    
    @IBAction func Add2(sender: AnyObject) {
        numberlabel = numberlabel + "2"
        TheNumber.text = numberlabel
    }
    
    
    @IBAction func Add3(sender: AnyObject) {
        numberlabel = numberlabel + "3"
        TheNumber.text = numberlabel
    }
    
    @IBAction func Add4(sender: AnyObject) {
        numberlabel = numberlabel + "4"
        TheNumber.text = numberlabel
    }
    
    @IBAction func Add5(sender: AnyObject) {
        numberlabel = numberlabel + "5"
        TheNumber.text = numberlabel
    }
    
    @IBAction func Add6(sender: AnyObject) {
        numberlabel = numberlabel + "6"
        TheNumber.text = numberlabel
    }
    
    @IBAction func Add7(sender: AnyObject) {
        numberlabel = numberlabel + "7"
        TheNumber.text = numberlabel
    }
    
    @IBAction func Add8(sender: AnyObject) {
        numberlabel = numberlabel + "8"
        TheNumber.text = numberlabel
    }
    
    @IBAction func Add9(sender: AnyObject) {
        numberlabel = numberlabel + "9"
        TheNumber.text = numberlabel
    }
    
    @IBAction func DeleteNumber(sender: AnyObject) {
        if numberlabel.characters.count > 0
        {
            numberlabel = numberlabel.substringToIndex(numberlabel.endIndex.predecessor())
            TheNumber.text = numberlabel
        }
    }

}
