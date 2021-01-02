//
//  TabbarController.swift
//  swift-boilterplate
//
//  Created by Wataru Maeda on 2021/01/01.
//
import UIKit

class TabbarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        configreTabs()
        configureTabStyles()
    }

    private func configreTabs() {
        let vcHome = ViewController()
        let vcSetttings = ViewController()

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

        // wrap with navigation controller
        let ncHome = NavigationController(rootViewController: vcHome)
        let ncSettings = NavigationController(rootViewController: vcSetttings)

        // set in view controllers array
        viewControllers = [ncHome, ncSettings]
        selectedIndex = 0
    }

    private func configureTabStyles() {
        // selected icon tint color
        UITabBar.appearance().tintColor = Colors.purple

        // tabbar item ScreenTitle color
        UITabBarItem.appearance().setTitleTextAttributes(
            [NSAttributedString.Key.foregroundColor: UIColor.gray],
            for: .normal
        )

        // tabbar item ScreenTitle selected color
        UITabBarItem.appearance().setTitleTextAttributes(
            [NSAttributedString.Key.foregroundColor: Colors.purple],
            for: .selected
        )

        // selected background color
        UITabBar.appearance().selectionIndicatorImage = UIImage()
    }
}
