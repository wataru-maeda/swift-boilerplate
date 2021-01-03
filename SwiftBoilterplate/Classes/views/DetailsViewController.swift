//
//  DetailsViewController.swift
//  SwiftBoilterplate
//
//  Created by Wataru Maeda on 2021/01/02.
//

import UIKit

class DetailsViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    title = "Detials"
    setupHeaderLogo()
    initViews()
  }

  private func initViews() {
    let nextButton = ButtonFactory.createPinkButton()
    nextButton.setTitle("Go Back", for: .normal)
    nextButton.center = view.center
    nextButton.handleClick(event: .touchUpInside) { _ in
      self.navigationController?.popViewController(animated: true)
    }
    view.addSubview(nextButton)
  }
}
