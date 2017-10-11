//
//  AppDelegate.swift
//  AppLaunchSequence
//
//  Created by Sean Berry on 10/11/17.
//  Copyright © 2017 Sean Berry. All rights reserved.
//

import UIKit

extension UIApplicationState: CustomStringConvertible {
    public var description: String {
        switch self {
        case .active:
            return "Active"
        case .background:
            return "Background"
        case .inactive:
            return "Inactive"
        }
    }
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let lo: String = launchOptions?.description ?? "nil"
        print("applicationDidFinishLaunchingWithOptions: \(application.applicationState) - LaunchOptions: \(lo)")
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        print("applicationWillResignActive: \(application.applicationState)")
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        print("applicationDidEnterBackground: \(application.applicationState)")
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        print("applicationWillEnterForeground: \(application.applicationState)")
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        print("applicationDidBecomeActive: \(application.applicationState)")
    }

    func applicationWillTerminate(_ application: UIApplication) {
        print("applicationWillTerminate: \(application.applicationState)")
    }
}
