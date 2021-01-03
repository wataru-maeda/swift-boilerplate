//
//  SideMenuController.swift
//  SwiftBoilterplate
//
//  Created by Wataru Maeda on 2021/01/02.
//

import SideMenu
import UIKit

class SideMenuController: SideMenuNavigationController {
  override func viewDidLoad() {
    super.viewDidLoad()
    configureTheme()
  }

  /**
   update default navigation theme
   */
  private func configureTheme() {
    navigationBar.barTintColor = Colors.purpleDark
    navigationBar.barStyle = .black
    navigationBar.tintColor = .white
    navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
    navigationBar.isTranslucent = false
  }
}
