//
//  ShopViewController.swift
//  Test1
//
//  Created by DEAN, JOSHUA on 9/21/15.
//  Copyright © 2015 Josh. All rights reserved.
//

import UIKit

class ShopViewController: UIViewController {
    
    var shaqs = 0.0
    var kobes = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //kobes = getAllDaKobes()
        //shaqs = getAllDaShaqs()
        //DaShaqAmount.text = String(shaqs)
        //DaKobeAmount.text = String(kobes)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var DaShaq: UILabel!
    @IBOutlet weak var DaShaqAmount: UILabel!
    @IBOutlet weak var DaKobe: UILabel!
    @IBOutlet weak var DaKobeAmount: UILabel!
    
}
