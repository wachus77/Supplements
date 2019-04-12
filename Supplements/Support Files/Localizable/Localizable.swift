//
//  Localizable.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 3/26/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import Foundation

protocol Localizable {
    var tableName: String { get }
    var localized: String { get }
}

extension Localizable where Self: RawRepresentable, Self.RawValue == String {
    var localized: String {
        return rawValue.localized(tableName: tableName)
    }
    
    var tableName: String {
        return String(describing: type(of: self))
    }
}

enum MainScreen: String, Localizable {
    case comingSoon
}

enum OnboardingScreen: String, Localizable {
    case firstScreenTitle
    case firstScreenDesc
    case secondScreenTitle
    case secondScreenDesc
    case thirdScreenTitle
    case thirdScreenDesc
}
