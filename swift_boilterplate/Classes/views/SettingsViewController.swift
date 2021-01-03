//
//  SettingsViewController.swift
//  swift_boilterplate
//
//  Created by Wataru Maeda on 2021/01/02.
//

import UIKit

class SettingsViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Settings"
        setupLeftMenu()
        setupHeaderLogo()
        initViews()
    }

    private func initViews() {
        let nextButton = ButtonFactory.createPurpleButton()
        nextButton.setTitle("Go to Details", for: .normal)
        nextButton.center = view.center
        nextButton.handleClick(event: .touchUpInside) { _ in
            self.navigationController?.pushViewController(DetailsViewController(), animated: true)
        }
        view.addSubview(nextButton)
    }
}
