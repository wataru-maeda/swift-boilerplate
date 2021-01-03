//
//  ButtonFactory.swift
//  SwiftBoilterplate
//
//  Created by Wataru Maeda on 2021/01/02.
//

import UIKit

class ButtonFactory {
    /**
     create purple button
     */
    static func createPurpleButton() -> UIButtonCallback {
        let button = UIButtonCallback()
        button.frame = CGRect(x: 0, y: 0, width: 140, height: 44)
        button.titleLabel?.font = Fonts.normal(size: 16)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.lightGray, for: .highlighted)
        button.backgroundColor = Colors.purple
        button.setBackgroundColor(color: Colors.purpleDark, forState: .highlighted)
        button.layer.cornerRadius = 3
        button.clipsToBounds = true
        return button
    }

    /**
     create pink button
     */
    static func createPinkButton() -> UIButtonCallback {
        let button = UIButtonCallback()
        button.frame = CGRect(x: 0, y: 0, width: 140, height: 44)
        button.titleLabel?.font = Fonts.normal(size: 16)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.lightGray, for: .highlighted)
        button.backgroundColor = Colors.pink
        button.setBackgroundColor(color: Colors.pinkDark, forState: .highlighted)
        button.layer.cornerRadius = 3
        button.clipsToBounds = true
        return button
    }
}
