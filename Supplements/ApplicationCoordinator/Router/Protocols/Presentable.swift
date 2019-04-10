//
//  Presentable.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 4/9/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import UIKit

protocol Presentable {
    func toPresent() -> UIViewController?
}

extension UIViewController: Presentable {
    
    func toPresent() -> UIViewController? {
        return self
    }
}
