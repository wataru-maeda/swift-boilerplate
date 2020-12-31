//
//  Navigation.swift
//  swift-boilterplate
//
//  Created by Wataru Maeda on 2020/12/30.
//

import UIKit

// MARK: - Style

private struct NavigationBarStyle {
  static let barTintColor: UIColor = .purpleDark
  static let barStyle: UIBarStyle = .black
  static let tintColor: UIColor = .white
  static let titleTextAttribute: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.white]
  static let isTranslucent = false
}

// MARK: - Navigation Controller

class NavigationController: UINavigationController {
  override func viewDidLoad() {
    super.viewDidLoad()
    configure()
  }

  private func configure() {
    navigationBar.barTintColor = NavigationBarStyle.barTintColor
    navigationBar.barStyle = NavigationBarStyle.barStyle
    navigationBar.tintColor = NavigationBarStyle.tintColor
    navigationBar.titleTextAttributes = NavigationBarStyle.titleTextAttribute
    navigationBar.isTranslucent = NavigationBarStyle.isTranslucent
  }
}
