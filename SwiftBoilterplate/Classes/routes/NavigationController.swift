//
//  Navigation.swift
//  SwiftBoilterplate
//
//  Created by Wataru Maeda on 2020/12/30.
//

import SideMenu

class NavigationController: UINavigationController {
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

// MARK: - Bar Items

extension UIViewController {
  /**
   setup header logo
   */
  func setupHeaderLogo() {
    let imageView = UIImageView()
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.heightAnchor.constraint(equalToConstant: 32).isActive = true
    imageView.contentMode = .scaleAspectFit
    imageView.image = Images.logo
    let contentView = UIView()
    navigationItem.titleView = contentView
    navigationItem.titleView?.addSubview(imageView)
    imageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
    imageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
  }

  /**
   setup navigation bar button at right
   */
  func setupEmptyRightMenu() {
    let barButton = UIBarButtonItem()
    barButton.customView = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
    navigationItem.rightBarButtonItem = barButton
  }

  /**
   setup navigation bar button at left
   */
  func setupLeftMenu() {
    let button = UIButton(type: .custom)
    button.setImage(Images.bars, for: .normal)
    button.frame = CGRect(x: 0, y: 0, width: 44, height: 44)
    button.imageView?.contentMode = .scaleAspectFit
    button.addTarget(self, action: #selector(openSideMenu), for: .touchUpInside)
    let barButton = UIBarButtonItem()
    barButton.customView = button
    navigationItem.leftBarButtonItem = barButton
  }

  /**
   open side menu
   */
  @objc private func openSideMenu() {
    let sideMenuView = UIViewController()
    sideMenuView.view.backgroundColor = .lightGray
    let sideMenu = SideMenuController(rootViewController: sideMenuView)
    sideMenu.presentationStyle = .viewSlideOutMenuPartialIn
    sideMenu.leftSide = true
    present(sideMenu, animated: true, completion: nil)
  }
}
