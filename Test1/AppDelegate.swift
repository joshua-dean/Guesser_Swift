//
//  AppDelegate.swift
//  Test1
//
//  Created by DEAN, JOSHUA on 9/16/15.
//  Copyright © 2015 Josh. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        print(outputData())
        let screensize = UIScreen.mainScreen().bounds.size.height
        // Iphone 6s plus height - 736.0
        // Iphone 6s plus width - 414.0
        // Iphone 6 plus height - 736.0
        // Iphone 6 plus width - 414.0
        
        // Iphone 6s height - 667.0
        // Iphone 6s width - 375.0
        // Iphone 6 height - 667.0
        // Iphone 6 width - 375.0
        
        // Iphone 5s height - 568.0
        // Iphone 5s width - 320.0
        // Iphone 5 height - 568.0
        // Iphone 5 width - 320.0
        
        // Iphone 4s height - 480.0
        // Iphone 4s width - 320.0
        print(screensize)
        return true
    }
    
    func outputData() -> String
    {
        return "Potatoe"
    }
    
    

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

