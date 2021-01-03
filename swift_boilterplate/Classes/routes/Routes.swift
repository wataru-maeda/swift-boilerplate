//
//  Routes.swift
//  swift_boilterplate
//
//  Created by Wataru Maeda on 2021/01/02.
//

import UIKit

class Routes {
    /**
     create root
     */
    static func create() -> UITabBarController {
        // routes
        let vcHome = HomeViewController()
        let vcSetttings = SettingsViewController()

        // set tabbar item
        vcHome.tabBarItem = UITabBarItem(
            title: "Home",
            image: Images.home,
            tag: 0
        )
        vcSetttings.tabBarItem = UITabBarItem(
            title: "Settings",
            image: Images.settings,
            tag: 1
        )

        // wrap view controller with navigation controller
        let ncHome = NavigationController(rootViewController: vcHome)
        let ncSettings = NavigationController(rootViewController: vcSetttings)

        // set in view controllers array
        let tabs = TabbarController()
        tabs.viewControllers = [ncHome, ncSettings]
        tabs.selectedIndex = 0

        return tabs
    }
}
