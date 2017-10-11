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
    
    // MARK: Initializing the App
    
    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        let lo: String = launchOptions?.description ?? "nil"
        print("applicationWillFinishLaunchingWithOptions: \(application.applicationState) - LaunchOptions: \(lo)")
        return true
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let lo: String = launchOptions?.description ?? "nil"
        print("applicationDidFinishLaunchingWithOptions: \(application.applicationState) - LaunchOptions: \(lo)")
        return true
    }
    
    // Not supposed to use this
    func applicationDidFinishLaunching(_ application: UIApplication) {
        print("applicationDidFinishLaunching: \(application.applicationState)")
    }
    
    // MARK: Responding to App State Changes and System Events
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        print("applicationDidBecomeActive: \(application.applicationState)")
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

    func applicationWillTerminate(_ application: UIApplication) {
        print("applicationWillTerminate: \(application.applicationState)")
    }
    
    func applicationProtectedDataWillBecomeUnavailable(_ application: UIApplication) {
        print("applicationProtectedDataWillBecomeUnavailable: \(application.applicationState)")
    }
    
    func applicationProtectedDataDidBecomeAvailable(_ application: UIApplication) {
        print("applicationProtectedDataDidBecomeAvailable: \(application.applicationState)")
    }
    
    func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
        print("applicationDidReceiveMemoryWarning: \(application.applicationState)")
    }
    
    func applicationSignificantTimeChange(_ application: UIApplication) {
        print("applicationSignificantTimeChange: \(application.applicationState)")
    }
    
    // MARK: Managing App State Restoration
    
    func application(_ application: UIApplication, shouldSaveApplicationState coder: NSCoder) -> Bool {
        print("applicationShouldSaveApplicationState: \(application.applicationState)")
        return true
    }
    
    func application(_ application: UIApplication, shouldRestoreApplicationState coder: NSCoder) -> Bool {
        print("applicationShouldRestoreApplicationState: \(application.applicationState)")
        return true
    }
    
    func application(_ application: UIApplication, viewControllerWithRestorationIdentifierPath identifierComponents: [Any], coder: NSCoder) -> UIViewController? {
        print("applicationViewControllerWithRestorationIdentifierPath: \(application.applicationState)")
        return nil
    }
    
    func application(_ application: UIApplication, willEncodeRestorableStateWith coder: NSCoder) {
        print("applicationWillEncodeRestorableStateWith: \(application.applicationState)")
    }
    
    func application(_ application: UIApplication, didDecodeRestorableStateWith coder: NSCoder) {
        print("applicationDidDecodeRestorableStateWith: \(application.applicationState)")
    }
    
    // MARK: Downloading Data in the Background
    
    func application(_ application: UIApplication, performFetchWithCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        print("applicationPerformFetchWithCompletionHandler: \(application.applicationState)")
    }
    
    func application(_ application: UIApplication, handleEventsForBackgroundURLSession identifier: String, completionHandler: @escaping () -> Void) {
        print("applicationHandleEventsForBackgroundURLSession: \(application.applicationState)")
    }
    
    // MARK: Handling Remote Notification Registration
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        print("applicationDidRegisterForRemoteNotificationsWithDeviceToken: \(application.applicationState)")
    }
    
    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
        print("applicationDidFailToRegisterForRemoteNotificationsWithError: \(application.applicationState)")
    }
    
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        print("applicationDidReceiveRemoteNotification: \(application.applicationState)")
    }
    
    // MARK: Continuing User Activity and Handling Quick Actions
    
    func application(_ application: UIApplication, willContinueUserActivityWithType userActivityType: String) -> Bool {
        print("applicationWillContinueUserActivityWithType: \(application.applicationState)")
        return true
    }
    
    func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([Any]?) -> Void) -> Bool {
        print("applicationContinueUserActivityRestorationHandler: \(application.applicationState)")
        return true
    }
    
    func application(_ application: UIApplication, didUpdate userActivity: NSUserActivity) {
        print("applicationDidUpdateUserActivity: \(application.applicationState)")
    }
    
    func application(_ application: UIApplication, didFailToContinueUserActivityWithType userActivityType: String, error: Error) {
        print("applicationDidFailToContinueUserActivityWithType: \(application.applicationState)")
    }
    
    func application(_ application: UIApplication, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void) {
        print("applicationPerformActionForShortcutItem: \(application.applicationState)")
    }
    
    // MARK: Interacting With WatchKit
    
    func application(_ application: UIApplication, handleWatchKitExtensionRequest userInfo: [AnyHashable : Any]?, reply: @escaping ([AnyHashable : Any]?) -> Void) {
        print("applicationHandleWatchKitExtensionRequest: \(application.applicationState)")
    }
    
    // MARK: Interacting With HealthKit
    
    func applicationShouldRequestHealthAuthorization(_ application: UIApplication) {
        print("applicationShouldRequestHealthAuthorization: \(application.applicationState)")
    }
    
    // MARK: Opening a URL-Specified Resource
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        print("applicationOpenURL: \(app.applicationState)")
        return true
    }
    
    // MARK: Disallowing Specified App Extension Types
    
    func application(_ application: UIApplication, shouldAllowExtensionPointIdentifier extensionPointIdentifier: UIApplicationExtensionPointIdentifier) -> Bool {
        print("applicationShouldAllowExtensionPointIdentifier: \(application.applicationState)")
        return true
    }
    
    // MARK: Handling SiriKit Intents
    
    //func application(_ application: UIApplication, handle: INIntent, )
    
    // MARK: Handling CloudKit Invitations
    
    //func applicationuserDidAc
    
    // MARK: Managing Interface Geometry
    
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        print("applicationSupportedInterfaceOrientationsFor: \(application.applicationState)")
        return .all
    }
    
    func application(_ application: UIApplication, willChangeStatusBarOrientation newStatusBarOrientation: UIInterfaceOrientation, duration: TimeInterval) {
        print("applicationWillChangeStatusBarOrientation: \(application.applicationState)")
    }
    
    func application(_ application: UIApplication, didChangeStatusBarOrientation oldStatusBarOrientation: UIInterfaceOrientation) {
        print("applicationDidChangeStatusBarOrientation: \(application.applicationState)")
    }
    
    func application(_ application: UIApplication, willChangeStatusBarFrame newStatusBarFrame: CGRect) {
        print("applicationWillChangeStatusBarFrame: \(application.applicationState)")
    }
    
    func application(_ application: UIApplication, didChangeStatusBarFrame oldStatusBarFrame: CGRect) {
        print("applicationDidChangeStatusBarFrame: \(application.applicationState)")
    }
}
