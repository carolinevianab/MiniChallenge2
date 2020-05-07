//
//  AppDelegate.swift
//  Test
//
//  Created by Aline Mitsuoka on 31/03/20.
//  Copyright © 2020 Aline Mitsuoka. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        /*
        let laucherdBefore = UserDefaults.standard.bool(forKey: "hasLauched")
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let lauchStoryboard = UIStoryboard(name: "Inicio", bundle: nil)
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        
        var vc: UIViewController
        
        if(laucherdBefore){
            vc = mainStoryboard.instantiateInitialViewController()!
        }
        else{
            vc = lauchStoryboard.instantiateViewController(withIdentifier: "BemVindoVC")
        }
        UserDefaults.standard.set(true, forKey: "hasLauched")
        
        self.window?.rootViewController = vc
        self.window?.makeKeyAndVisible()
        */
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

