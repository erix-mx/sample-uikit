//
//  AppDelegate.swift
//  UIKit Test
//
//  Created by Erix on 22/08/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var context: Context?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UINavigationController()
        context = Context(with: window?.rootViewController as! UINavigationController)
        context?.initialize(coordinator: AppCoordinator(context: context!))
        window?.makeKeyAndVisible()
        return true
    }




}

