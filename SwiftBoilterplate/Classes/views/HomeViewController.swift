//
//  HomeViewController.swift
//  SwiftBoilterplate
//
//  Created by Wataru Maeda on 2020/12/27.
//

import UIKit

class HomeViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Home"
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
