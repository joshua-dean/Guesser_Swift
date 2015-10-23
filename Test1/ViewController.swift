//
//  ViewController.swift
//  Test1
//
//  Created by DEAN, JOSHUA on 9/16/15.
//  Copyright © 2015 Josh. All rights reserved.
//
//  Used for the main screen
//

import UIKit

//testComment
class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var potatoe = "cheese"
        storeObject("potatoe", value: potatoe)
        potatoe = "bacon"
        potatoe = retrieveObject("potatoe") as! String
        print(potatoe)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }
    
    
    /*
     *  Makes a decision based on screen size to have a scaled storyboard
     */
    @IBAction func ChangeStory(sender: AnyObject) {
        let screenheight = UIScreen.mainScreen().bounds.size.height
        if screenheight == 667.0
        {
            let viewController:UIViewController = UIStoryboard(name: "IPhone6", bundle: nil).instantiateViewControllerWithIdentifier("SecondViewController") as UIViewController
            self.presentViewController(viewController, animated: false, completion: nil)
        }
        else if screenheight == 568.0
        {
            let viewController:UIViewController = UIStoryboard(name: "IPhone5", bundle: nil).instantiateViewControllerWithIdentifier("SecondViewController") as UIViewController
            self.presentViewController(viewController, animated: false, completion: nil)
        }
        else if screenheight == 480.0
        {
            let viewController:UIViewController = UIStoryboard(name: "IPhone4s", bundle: nil).instantiateViewControllerWithIdentifier("SecondViewController") as UIViewController
            self.presentViewController(viewController, animated: false, completion: nil)
        }
        else
        {
            //nothing
        }
        
    }
}

