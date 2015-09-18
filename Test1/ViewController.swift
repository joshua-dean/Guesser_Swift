//
//  ViewController.swift
//  Test1
//
//  Created by DEAN, JOSHUA on 9/16/15.
//  Copyright © 2015 Josh. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        blazeIt.text = "Guesser"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    @IBOutlet weak var blazeIt: UITextField!

    @IBAction func blazeItV2(sender: AnyObject) {
        blazeIt.text = "420"
    }
    */
    
    @IBOutlet weak var blazeIt: UILabel!
    
    @IBAction func blazeFunk(sender: AnyObject) {
        if blazeIt.text == "420"
        {
            blazeIt.text = "Guesser"
        }
        else
        {
            blazeIt.text = "420"
        }
    }
    
    @IBAction func Button2(sender: AnyObject) {
        blazeIt.text = "Vex"
    }
    
    @IBAction func DaButton(sender: AnyObject) {
    }
    
    @IBOutlet weak var CountingIsFun: UILabel!
    
    
    @IBAction func DaCount(sender: AnyObject) {
        counter++
        CountingIsFun.text = "\(counter)"
    }
    
}

