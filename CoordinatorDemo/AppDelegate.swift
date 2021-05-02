//
//  AppDelegate.swift
//  CoordinatorDemo
//
//  Created by Arnav Agarwal on 02/05/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var coordinator: MainCoordinator?
    var window: UIWindow?



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = MainTabBarControllerViewController()
        window?.makeKeyAndVisible()
        
        return true
    }

}

