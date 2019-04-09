//
//  Localizable+UIView+Extensions.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 3/26/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import UIKit

extension UIView {
    
    @IBInspectable var localizableTableNameForText: String {
        get {
            return self.localizableTableNameForText
        }
        
        set(tableName) {
            switch self {
            case let label as UILabel:
                label.text = label.text?.localized(tableName: tableName)
            case let textField as UITextField:
                textField.text = textField.text?.localized(tableName: tableName)
            case let button as UIButton:
                let buttonText = button.title(for: .normal)?.localized(tableName: tableName)
                button.setTitle(buttonText, for: .normal)
            default:
                break
            }
        }
    }
    
    @IBInspectable var localizableTableNameForPlaceholder: String {
        get {
            return self.localizableTableNameForPlaceholder
        }
        
        set(tableName) {
            switch self {
            case let textField as UITextField:
                textField.placeholder = textField.placeholder?.localized(tableName: tableName)
            default:
                break
            }
        }
    }
}
