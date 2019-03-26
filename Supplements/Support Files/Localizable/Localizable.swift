//
//  Localizable.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 3/26/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import Foundation

protocol Localized {}

extension Localized where Self: RawRepresentable, Self.RawValue == String {
    
    var text: String {
        let selfClassName = String(describing: type(of: self))
        
        return NSLocalizedString("\(selfClassName).\(self.rawValue)", value: "No localized string found", comment: "")
    }
    
}

enum Localizable {
    
    enum MainScreen: String, Localized {
        case comingSoon
    }
    
}

