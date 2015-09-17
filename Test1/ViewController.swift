//
//  ViewController.swift
//  Test1
//
//  Created by DEAN, JOSHUA on 9/16/15.
//  Copyright © 2015 Josh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
        blazeIt.text = "420"
    }
    
    
}

