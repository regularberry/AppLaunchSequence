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
    
    var callCount = 1
    var consoleOutput: String = ""
    
    // Help us format a GitHub numbered list
    private func callPrint(_ message: String) {
        let str = "\(callCount). \(message)"
        print(str)
        consoleOutput += "\(str)\n"
        callCount += 1
    }
    
    // MARK: Initializing the App
    
    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        let lo: String = launchOptions?.description ?? "nil"
        callPrint("applicationWillFinishLaunchingWithOptions: \(application.applicationState) - LaunchOptions: \(lo)")
        return true
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let lo: String = launchOptions?.description ?? "nil"
        callPrint("applicationDidFinishLaunchingWithOptions: \(application.applicationState) - LaunchOptions: \(lo)")
        return true
    }
    
    // Not supposed to use this
    func applicationDidFinishLaunching(_ application: UIApplication) {
        callPrint("applicationDidFinishLaunching: \(application.applicationState)")
    }
    
    // MARK: Responding to App State Changes and System Events
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        callPrint("applicationDidBecomeActive: \(application.applicationState)")
    }

    func applicationWillResignActive(_ application: UIApplication) {
        callPrint("applicationWillResignActive: \(application.applicationState)")
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        callPrint("applicationDidEnterBackground: \(application.applicationState)")
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        callPrint("applicationWillEnterForeground: \(application.applicationState)")
    }

    func applicationWillTerminate(_ application: UIApplication) {
        callPrint("applicationWillTerminate: \(application.applicationState)")
    }
    
    func applicationProtectedDataWillBecomeUnavailable(_ application: UIApplication) {
        callPrint("applicationProtectedDataWillBecomeUnavailable: \(application.applicationState)")
    }
    
    func applicationProtectedDataDidBecomeAvailable(_ application: UIApplication) {
        callPrint("applicationProtectedDataDidBecomeAvailable: \(application.applicationState)")
    }
    
    func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
        callPrint("applicationDidReceiveMemoryWarning: \(application.applicationState)")
    }
    
    func applicationSignificantTimeChange(_ application: UIApplication) {
        callPrint("applicationSignificantTimeChange: \(application.applicationState)")
    }
    
    // MARK: Managing App State Restoration
    
    func application(_ application: UIApplication, shouldSaveApplicationState coder: NSCoder) -> Bool {
        callPrint("applicationShouldSaveApplicationState: \(application.applicationState)")
        return true
    }
    
    func application(_ application: UIApplication, shouldRestoreApplicationState coder: NSCoder) -> Bool {
        callPrint("applicationShouldRestoreApplicationState: \(application.applicationState)")
        return true
    }
    
    func application(_ application: UIApplication, viewControllerWithRestorationIdentifierPath identifierComponents: [Any], coder: NSCoder) -> UIViewController? {
        callPrint("applicationViewControllerWithRestorationIdentifierPath: \(application.applicationState)")
        return nil
    }
    
    func application(_ application: UIApplication, willEncodeRestorableStateWith coder: NSCoder) {
        callPrint("applicationWillEncodeRestorableStateWith: \(application.applicationState)")
    }
    
    func application(_ application: UIApplication, didDecodeRestorableStateWith coder: NSCoder) {
        callPrint("applicationDidDecodeRestorableStateWith: \(application.applicationState)")
    }
    
    // MARK: Downloading Data in the Background
    
    func application(_ application: UIApplication, performFetchWithCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        callPrint("applicationPerformFetchWithCompletionHandler: \(application.applicationState)")
    }
    
    func application(_ application: UIApplication, handleEventsForBackgroundURLSession identifier: String, completionHandler: @escaping () -> Void) {
        callPrint("applicationHandleEventsForBackgroundURLSession: \(application.applicationState)")
    }
    
    // MARK: Handling Remote Notification Registration
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        callPrint("applicationDidRegisterForRemoteNotificationsWithDeviceToken: \(application.applicationState)")
    }
    
    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
        callPrint("applicationDidFailToRegisterForRemoteNotificationsWithError: \(application.applicationState)")
    }
    
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        callPrint("applicationDidReceiveRemoteNotification: \(application.applicationState)")
    }
    
    // MARK: Continuing User Activity and Handling Quick Actions
    
    func application(_ application: UIApplication, willContinueUserActivityWithType userActivityType: String) -> Bool {
        callPrint("applicationWillContinueUserActivityWithType: \(application.applicationState)")
        return true
    }
    
    func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([Any]?) -> Void) -> Bool {
        callPrint("applicationContinueUserActivityRestorationHandler: \(application.applicationState)")
        return true
    }
    
    func application(_ application: UIApplication, didUpdate userActivity: NSUserActivity) {
        callPrint("applicationDidUpdateUserActivity: \(application.applicationState)")
    }
    
    func application(_ application: UIApplication, didFailToContinueUserActivityWithType userActivityType: String, error: Error) {
        callPrint("applicationDidFailToContinueUserActivityWithType: \(application.applicationState)")
    }
    
    func application(_ application: UIApplication, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void) {
        callPrint("applicationPerformActionForShortcutItem: \(application.applicationState)")
    }
    
    // MARK: Interacting With WatchKit
    
    func application(_ application: UIApplication, handleWatchKitExtensionRequest userInfo: [AnyHashable : Any]?, reply: @escaping ([AnyHashable : Any]?) -> Void) {
        callPrint("applicationHandleWatchKitExtensionRequest: \(application.applicationState)")
    }
    
    // MARK: Interacting With HealthKit
    
    func applicationShouldRequestHealthAuthorization(_ application: UIApplication) {
        callPrint("applicationShouldRequestHealthAuthorization: \(application.applicationState)")
    }
    
    // MARK: Opening a URL-Specified Resource
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        callPrint("applicationOpenURL: \(app.applicationState)")
        return true
    }
    
    // MARK: Disallowing Specified App Extension Types
    
    func application(_ application: UIApplication, shouldAllowExtensionPointIdentifier extensionPointIdentifier: UIApplicationExtensionPointIdentifier) -> Bool {
        callPrint("applicationShouldAllowExtensionPointIdentifier: \(application.applicationState)")
        return true
    }
    
    // MARK: Handling SiriKit Intents
    
    //func application(_ application: UIApplication, handle: INIntent, )
    
    // MARK: Handling CloudKit Invitations
    
    //func applicationuserDidAc
    
    // MARK: Managing Interface Geometry
    
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        callPrint("applicationSupportedInterfaceOrientationsFor: \(application.applicationState)")
        return .all
    }
    
    func application(_ application: UIApplication, willChangeStatusBarOrientation newStatusBarOrientation: UIInterfaceOrientation, duration: TimeInterval) {
        callPrint("applicationWillChangeStatusBarOrientation: \(application.applicationState)")
    }
    
    func application(_ application: UIApplication, didChangeStatusBarOrientation oldStatusBarOrientation: UIInterfaceOrientation) {
        callPrint("applicationDidChangeStatusBarOrientation: \(application.applicationState)")
    }
    
    func application(_ application: UIApplication, willChangeStatusBarFrame newStatusBarFrame: CGRect) {
        callPrint("applicationWillChangeStatusBarFrame: \(application.applicationState)")
    }
    
    func application(_ application: UIApplication, didChangeStatusBarFrame oldStatusBarFrame: CGRect) {
        callPrint("applicationDidChangeStatusBarFrame: \(application.applicationState)")
    }
}
