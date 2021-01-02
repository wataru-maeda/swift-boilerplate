//
//  Navigation.swift
//  swift-boilterplate
//
//  Created by Wataru Maeda on 2020/12/30.
//

import UIKit

class NavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        configureBarStyle()
    }

    private func configureBarStyle() {
        navigationBar.barTintColor = Colors.purpleDark
        navigationBar.barStyle = .black
        navigationBar.tintColor = .white
        navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationBar.isTranslucent = false
    }
}
