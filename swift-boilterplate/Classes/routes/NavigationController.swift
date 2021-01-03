//
//  Navigation.swift
//  swift-boilterplate
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
     setup navigation bar button at right
     */
    func setupProfileAtRight() {
        let button = UIButton(type: .custom)
        button.setImage(Images.user, for: .normal)
        button.frame = CGRect(x: 0, y: 0, width: 44, height: 44)
        button.imageView?.contentMode = .scaleAspectFit
        button.addTarget(self, action: #selector(self.openSideMenu), for: .touchUpInside)
        let barButton = UIBarButtonItem()
        barButton.customView = button
        navigationItem.rightBarButtonItem = barButton
    }

    /**
     open side menu
     */
    @objc private func openSideMenu() {
        let sideMenuView = UIViewController()
        sideMenuView.view.backgroundColor = .lightGray
        let sideMenu = SideMenuController(rootViewController: sideMenuView)
        sideMenu.presentationStyle = .viewSlideOut
        present(sideMenu, animated: true, completion: nil)
    }
}
