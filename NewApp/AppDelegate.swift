//
//  AppDelegate.swift
//  NewApp
//
//  Created by Paul Tiriteu on 09.08.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let router = MainRouter()
        window?.rootViewController = router.getInitialViewController()
        window?.makeKeyAndVisible()
        
        return true
    }
}

