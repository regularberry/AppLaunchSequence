# About
This reference will tell you the order in which UIApplicationDelegate methods are called based on the action performed and the current state of the app.

# Definitions
**Not Loaded** is defined as the app not being in memory at all.

**Backgrounded** is defined as being in the background (not yet purged from memory).

This data was gathered using iOS 11.0.3

# Actions
* [Launching the app](#launching-the-app---from-not-loaded)
* [Backgrounding the app](#backgrounding-the-app---from-active)
* [Open Universal Link](#universal-link---from-not-loaded)
* [Open Deep Link](#deep-link---from-not-loaded)
* [Open Push Notification](#push-notification---from-not-loaded)
* [System Alert Displayed](#system-alert-displayed)
* [Background Fetch](#background-fetch---from-not-loaded)

## Launching the app - from *Not Loaded*
1. applicationWillChangeStatusBarFrame: Inactive
2. applicationDidChangeStatusBarFrame: Inactive
3. applicationSupportedInterfaceOrientationsFor: Inactive
4. applicationSupportedInterfaceOrientationsFor: Inactive
5. applicationSupportedInterfaceOrientationsFor: Inactive
6. applicationSupportedInterfaceOrientationsFor: Inactive
7. applicationWillFinishLaunchingWithOptions: Inactive - LaunchOptions: nil
8. applicationDidFinishLaunchingWithOptions: Inactive - LaunchOptions: nil
9. applicationSupportedInterfaceOrientationsFor: Inactive
10. applicationSupportedInterfaceOrientationsFor: Inactive
11. applicationSupportedInterfaceOrientationsFor: Inactive
12. applicationDidBecomeActive: Active

## Launching the app - from *Backgrounded*
1. applicationWillEnterForeground: Background
2. applicationDidBecomeActive: Active

## Backgrounding the app - from *Active*
1. applicationWillResignActive: Active
2. applicationDidEnterBackground: Background
3. applicationShouldSaveApplicationState: Background
4. applicationWillEncodeRestorableStateWith: Background
5. applicationSupportedInterfaceOrientationsFor: Background

## Universal Link - from *Not Loaded*
1. applicationWillChangeStatusBarFrame: Inactive
2. applicationDidChangeStatusBarFrame: Inactive
3. applicationSupportedInterfaceOrientationsFor: Inactive
4. applicationSupportedInterfaceOrientationsFor: Inactive
5. applicationSupportedInterfaceOrientationsFor: Inactive
6. applicationSupportedInterfaceOrientationsFor: Inactive
7. applicationWillFinishLaunchingWithOptions: Inactive - LaunchOptions: {
    UIApplicationLaunchOptionsUserActivityIdentifierKey = "748F80DF-639A-4013-A8E6-F174E99DEE03";
    UIApplicationLaunchOptionsUserActivityKey = "<NSUserActivity: 0x1c0023ba0>";
    UIApplicationLaunchOptionsUserActivityTypeKey = NSUserActivityTypeBrowsingWeb;
}
8. applicationShouldRestoreApplicationState: Inactive
9. applicationDidDecodeRestorableStateWith: Inactive
10. applicationDidFinishLaunchingWithOptions: Inactive - LaunchOptions: {
		UIApplicationLaunchOptionsUserActivityIdentifierKey = "748F80DF-639A-4013-A8E6-F174E99DEE03";
    	UIApplicationLaunchOptionsUserActivityKey = "<NSUserActivity: 0x1c0023ba0>";
    	UIApplicationLaunchOptionsUserActivityTypeKey = NSUserActivityTypeBrowsingWeb;
	}
11. applicationSupportedInterfaceOrientationsFor: Inactive
12. applicationSupportedInterfaceOrientationsFor: Inactive
13. applicationSupportedInterfaceOrientationsFor: Inactive
14. applicationWillContinueUserActivityWithType: Inactive
15. applicationContinueUserActivityRestorationHandler: Inactive
16. applicationDidBecomeActive: Active

## Universal Link - from *Backgrounded*
1. applicationWillEnterForeground: Background
2. applicationWillContinueUserActivityWithType: Inactive
3. applicationContinueUserActivityRestorationHandler: Inactive
4. applicationDidBecomeActive: Active

## Deep Link - from *Not Loaded*
1. applicationWillChangeStatusBarFrame: Inactive
2. applicationDidChangeStatusBarFrame: Inactive
3. applicationSupportedInterfaceOrientationsFor: Inactive
4. applicationSupportedInterfaceOrientationsFor: Inactive
5. applicationSupportedInterfaceOrientationsFor: Inactive
6. applicationSupportedInterfaceOrientationsFor: Inactive
7. applicationWillFinishLaunchingWithOptions: Inactive - LaunchOptions: {
		UIApplicationLaunchOptionsURLKey: appLaunchSeq://whatup
	}
8. applicationDidFinishLaunchingWithOptions: Inactive - LaunchOptions: {
		UIApplicationLaunchOptionsURLKey: appLaunchSeq://whatup
	}
9. applicationSupportedInterfaceOrientationsFor: Inactive
10. applicationSupportedInterfaceOrientationsFor: Inactive
11. applicationSupportedInterfaceOrientationsFor: Inactive
12. applicationOpenURL: Inactive URL:appLaunchSeq://whatup
13. applicationDidBecomeActive: Active

## Deep Link - from *Backgrounded*
1. applicationWillEnterForeground: Background
2. applicationOpenURL: Inactive URL:appLaunchSeq://whatup
3. applicationDidBecomeActive: Active

## Push Notification - from *Not Loaded*
1. applicationWillChangeStatusBarFrame: Inactive
2. applicationDidChangeStatusBarFrame: Inactive
3. applicationSupportedInterfaceOrientationsFor: Inactive
4. applicationSupportedInterfaceOrientationsFor: Inactive
5. applicationSupportedInterfaceOrientationsFor: Inactive
6. applicationSupportedInterfaceOrientationsFor: Inactive
7. applicationWillFinishLaunchingWithOptions: Inactive - LaunchOptions: [__C.UIApplicationLaunchOptionsKey(_rawValue: UIApplicationLaunchOptionsRemoteNotificationKey): {
    aps =     {
        alert = "Hi Sean!";
        badge = 1;
        sound = default;
    };
}]
8. applicationShouldRestoreApplicationState: Inactive
9. applicationDidDecodeRestorableStateWith: Inactive
10. applicationDidFinishLaunchingWithOptions: Inactive - LaunchOptions: [__C.UIApplicationLaunchOptionsKey(_rawValue: UIApplicationLaunchOptionsRemoteNotificationKey): {\
    aps =     {
        alert = "Hi Sean!";
        badge = 1;
        sound = default;
    };
}]
11. applicationSupportedInterfaceOrientationsFor: Inactive
12. applicationSupportedInterfaceOrientationsFor: Inactive
13. applicationSupportedInterfaceOrientationsFor: Inactive
14. applicationDidReceiveRemoteNotification: Inactive
15. applicationDidBecomeActive: Active

## Push Notification - from *Backgrounded*
1. applicationWillEnterForeground: Background
2. applicationDidReceiveRemoteNotification: Inactive
3. applicationDidBecomeActive: Active

## System Alert Displayed 
(e.g. when asking for notification privileges)
1. applicationWillResignActive: Active
2. applicationDidBecomeActive: Active

## Background Fetch - from *Not Loaded*
1. applicationWillChangeStatusBarFrame: Background
2. applicationDidChangeStatusBarFrame: Background
3. applicationSupportedInterfaceOrientationsFor: Background
4. applicationSupportedInterfaceOrientationsFor: Background
5. applicationSupportedInterfaceOrientationsFor: Background
6. applicationSupportedInterfaceOrientationsFor: Background
7. applicationWillFinishLaunchingWithOptions: Background - LaunchOptions: nil
8. applicationDidFinishLaunchingWithOptions: Background - LaunchOptions: nil
9. applicationSupportedInterfaceOrientationsFor: Background
10. applicationSupportedInterfaceOrientationsFor: Background
11. applicationSupportedInterfaceOrientationsFor: Background
12. applicationPerformFetchWithCompletionHandler: Background


