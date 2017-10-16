# About
This reference will tell you the order in which UIApplicationDelegate methods are called, based on the action performed and the current state of the app.

# Definitions
*Not Loaded* is defined as the app not being in memory at all
*Backgrounded* is defined as being in the background, not yet purged from memory.

This data was gathered using iOS 11.0.3 on an iPhone 6. If you suspect you'll have different results on the version of iOS you're using or your particular device, feel free to pull down the code and run a test yourself.

# Actions
* [Launching the app](#Launching-the-app)
* [Backgrounding the app](#Backgrounding-the-app)

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