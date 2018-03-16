//
//  AppDelegate.swift
//  FinalProject
//
//  Created by student on 2017/12/8.
//  Copyright © 2017年 TNFSH104. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Wait 3.5 sec before enter LoginVC
        Thread.sleep(forTimeInterval: 3.5)
        // Override point for customization after application launch.
        var userDefault = UserDefaults.standard
        
        userDefault.set(0, forKey: "Meal1Amount")
        // should to this after you change value
        userDefault.synchronize()
        // getting value from userDefault
        //Meal2Amount = userDefault.double(forKey: "Meal1Amount")
        
        userDefault.set(0, forKey: "Meal2Amount")
        userDefault.set(0, forKey: "Meal3Amount")
        userDefault.set(0, forKey: "Meal4Amount")
        userDefault.set(0, forKey: "Meal5Amount")
        userDefault.set(0, forKey: "Meal1Price")
        userDefault.set(0, forKey: "Meal2Price")
        userDefault.set(0, forKey: "Meal3Price")
        userDefault.set(0, forKey: "Meal4Price")
        userDefault.set(0, forKey: "Meal5Price")
        userDefault.set("薯條", forKey: "Meal1Name")
        userDefault.set("可樂", forKey: "Meal2Name")
        userDefault.set("漢堡", forKey: "Meal3Name")
        userDefault.set("綠茶", forKey: "Meal4Name")
        userDefault.set("濃湯", forKey: "Meal5Name")
        userDefault.set("", forKey: "OrderDetails")
        
        userDefault.synchronize()
        
        
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

