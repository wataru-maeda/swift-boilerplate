//
//  Fonts.swift
//  swift-boilterplate
//
//  Created by Wataru Maeda on 2021/01/02.
//

import Rswift
import UIKit

class Fonts {
    static func normal(size: CGFloat) -> UIFont {
        if let font = R.font.roundedMplus1pLight(size: size) {
            return font
        }
        return UIFont.systemFont(ofSize: size, weight: UIFont.Weight.light)
    }

    static func medium(size: CGFloat) -> UIFont {
        if let font = R.font.roundedMplus1pMedium(size: size) {
            return font
        }
        return UIFont.systemFont(ofSize: size, weight: UIFont.Weight.medium)
    }

    static func bold(size: CGFloat) -> UIFont {
        if let font = R.font.roundedMplus1pHeavy(size: size) {
            return font
        }
        return UIFont.systemFont(ofSize: size, weight: UIFont.Weight.bold)
    }
}
