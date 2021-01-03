//
//  AppEnv.swift
//  SwiftBoilterplate
//
//  Created by Wataru Maeda on 2020/12/28.
//

import Foundation

// ------------------------------------
// Develop
// ------------------------------------

#if DEVELOP
public struct AppEnv {
    static let env = "DEV"
}

// ------------------------------------
// Staging
// ------------------------------------

#elseif STAGING
public struct AppEnv {
    static let env = "STAGING"
}

// ------------------------------------
// Production
// ------------------------------------

#else
public struct AppEnv {
    static let env = "PROD"
}
#endif
