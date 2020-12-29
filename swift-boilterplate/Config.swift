//
//  Config.swift
//  swift-boilterplate
//
//  Created by Wataru Maeda on 2020/12/28.
//

import Foundation

struct Config {
  #if DEVELOP
    static let env = "dev"
  #elseif STAGING
    static let env = "staging"
  #else
    static let env = "prod"
  #endif
}
