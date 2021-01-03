//
//  UIButtonCallback.swift
//  swift_boilterplate
//
//  Created by Wataru Maeda on 2021/01/02.
//

import UIKit

class UIButtonCallback: UIButton {
    private lazy var callback: (UIButton) -> Void = { button in }

    func handleClick(event: UIControl.Event, callback: @escaping (UIButton) -> Void) {
        self.callback = callback
        addTarget(self, action: #selector(tapped), for: event)
    }

    @objc private func tapped() {
        callback(self)
    }
}
