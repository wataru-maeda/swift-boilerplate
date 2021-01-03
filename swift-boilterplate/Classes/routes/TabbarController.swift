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
        configureTheme()
    }

    /**
     setup tabbar theme
     */
    private func configureTheme() {
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
