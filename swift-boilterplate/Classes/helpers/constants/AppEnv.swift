//
//  AppEnv.swift
//  swift-boilterplate
//
//  Created by Wataru Maeda on 2020/12/28.
//

import Foundation

// ------------------------------------
// Develop
// ------------------------------------

#if DEVELOP
public struct AppEnv {
  static let env = "dev"
}

// ------------------------------------
// Staging
// ------------------------------------

#elseif STAGING
public struct AppEnv {
  static let env = "staging"
}

// ------------------------------------
// Production
// ------------------------------------

#else
public struct AppEnv {
  static let env = "prod"
}
#endif
