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
7. applicationWillFinishLaunchingWithOptions: Inactive - LaunchOptions: [__C.UIApplicationLaunchOptionsKey(_rawValue: UIApplicationLaunchOptionsSourceApplicationKey): com.tinyspeck.chatlyio, __C.UIApplicationLaunchOptionsKey(_rawValue: UIApplicationLaunchOptionsUserActivityDictionaryKey): {
    UIApplicationLaunchOptionsUserActivityIdentifierKey = "748F80DF-639A-4013-A8E6-F174E99DEE03";
    UIApplicationLaunchOptionsUserActivityKey = "<NSUserActivity: 0x1c0023ba0>";
    UIApplicationLaunchOptionsUserActivityTypeKey = NSUserActivityTypeBrowsingWeb;
}]
8. applicationShouldRestoreApplicationState: Inactive
9. applicationDidDecodeRestorableStateWith: Inactive
10. applicationDidFinishLaunchingWithOptions: Inactive - LaunchOptions: [__C.UIApplicationLaunchOptionsKey(_rawValue: UIApplicationLaunchOptionsSourceApplicationKey): com.tinyspeck.chatlyio, __C.UIApplicationLaunchOptionsKey(_rawValue: UIApplicationLaunchOptionsUserActivityDictionaryKey): {
    UIApplicationLaunchOptionsUserActivityIdentifierKey = "748F80DF-639A-4013-A8E6-F174E99DEE03";
    UIApplicationLaunchOptionsUserActivityKey = "<NSUserActivity: 0x1c0023ba0>";
    UIApplicationLaunchOptionsUserActivityTypeKey = NSUserActivityTypeBrowsingWeb;
}]
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
7. applicationWillFinishLaunchingWithOptions: Inactive - LaunchOptions: [__C.UIApplicationLaunchOptionsKey(_rawValue: UIApplicationLaunchOptionsSourceApplicationKey): com.apple.CoreSimulator.CoreSimulatorBridge, __C.UIApplicationLaunchOptionsKey(_rawValue: UIApplicationLaunchOptionsURLKey): appLaunchSeq://whatup]
8. applicationDidFinishLaunchingWithOptions: Inactive - LaunchOptions: [__C.UIApplicationLaunchOptionsKey(_rawValue: UIApplicationLaunchOptionsSourceApplicationKey): com.apple.CoreSimulator.CoreSimulatorBridge, __C.UIApplicationLaunchOptionsKey(_rawValue: UIApplicationLaunchOptionsURLKey): appLaunchSeq://whatup]
9. applicationSupportedInterfaceOrientationsFor: Inactive
10. applicationSupportedInterfaceOrientationsFor: Inactive
11. applicationSupportedInterfaceOrientationsFor: Inactive
12. applicationOpenURL: Inactive URL:appLaunchSeq://whatup Options:[__C.UIApplicationOpenURLOptionsKey(_rawValue: UIApplicationOpenURLOptionsSourceApplicationKey): com.apple.CoreSimulator.CoreSimulatorBridge, __C.UIApplicationOpenURLOptionsKey(_rawValue: UIApplicationOpenURLOptionsOpenInPlaceKey): 0]
13. applicationDidBecomeActive: Active

## Deep Link - from *Backgrounded*
1. applicationWillEnterForeground: Background
2. applicationOpenURL: Inactive URL:appLaunchSeq://whatup Options:[__C.UIApplicationOpenURLOptionsKey(_rawValue: UIApplicationOpenURLOptionsSourceApplicationKey): com.apple.CoreSimulator.CoreSimulatorBridge, __C.UIApplicationOpenURLOptionsKey(_rawValue: UIApplicationOpenURLOptionsOpenInPlaceKey): 0]
3. applicationDidBecomeActive: Active


