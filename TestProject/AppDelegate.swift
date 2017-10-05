//
//  AppDelegate.swift
//  TestProject
//
//  Created by Voloshanov Sasha on 9/25/17.
//  Copyright © 2017 Sasha Voloshanov. All rights reserved.
//

import UIKit

public var subjects = UserDefaults.standard.stringArray(forKey: Server.StandartKeys.subjectsList)

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //TODO:- Regist all user info
        if subjects == nil {
            parseFileFromProject()
        }
        
        return true
    }
    
    func parseFileFromProject() {
        
        let path = Bundle.main.path(forResource: "Subjects", ofType: "txt")
        
        let url = URL(fileURLWithPath: path!)
        
        do {
            let data = try String(contentsOf: url, encoding: .utf8)
            let myStrings = data.components(separatedBy: .newlines)
            
            subjects = myStrings
            UserDefaults.standard.set(subjects, forKey: Server.StandartKeys.subjectsList)
            
            
        } catch {
            print(error)
        }
        
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

    //TODO:- Get all info from server

}

