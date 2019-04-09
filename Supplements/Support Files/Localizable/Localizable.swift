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
}

enum MainScreen: String, Localizable {
    case comingSoon
    
    var tableName: String {
        return String(describing: type(of: self))
    }
}
