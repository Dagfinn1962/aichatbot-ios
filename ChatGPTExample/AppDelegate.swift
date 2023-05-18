//
//  AppDelegate.swift
//  AICHATBOT
//
//  Created by Dagfinn Lindbom 18/5- 23
//

import UIKit
import SendbirdUIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        SendbirdUI.initialize(applicationId: "A094550E-7ACC-4DDE-9ACE-3C873D4506CF") { error in
            if let error { print(error.localizedDescription) }
        }
        SBUGlobals.currentUser = SBUUser(userId: "j_sung_0o0")
        
        // MARK: Customizations
        self.updateViewControllerSet()
        self.updateStringSet()
        self.updateTheme()
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let viewController = SBUViewControllerSet.GroupChannelListViewController.init()
        let navigationController = UINavigationController.init(rootViewController: viewController)
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
        return true
    }
    
    func updateViewControllerSet() {
        SBUViewControllerSet.GroupChannelListViewController = ChatGPTChannelListViewController.self
        SBUViewControllerSet.GroupChannelViewController = ChatGPTChannelViewController.self
        SBUViewControllerSet.GroupChannelSettingsViewController = ChatGPTChannelSettingsViewController.self
        SBUViewControllerSet.GroupUserListViewController = ChatGPTUserListViewController.self
    }
    
    func updateStringSet() {
        SBUStringSet.CreateChannel_Header_Title = "Channel type"
    }
    
    func updateTheme() {
        let messageCellTheme = SBUMessageCellTheme(
            leftBackgroundColor: SBUColorSet.background50,
            leftPressedBackgroundColor: SBUColorSet.background100
        )
        SBUTheme.messageCellTheme = messageCellTheme
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        application.applicationIconBadgeNumber = 0
    }
}
