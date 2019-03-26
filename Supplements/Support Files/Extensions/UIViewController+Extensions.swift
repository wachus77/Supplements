//
//  UIViewController+Extension.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 3/22/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import UIKit

extension UIViewController {
    class func controllerInStoryboard<T: UIViewController>(_ storyboard: UIStoryboard, identifier: String) -> T {
        return storyboard.instantiateViewController(withIdentifier: identifier) as! T
    }
    
    class func controllerFromStoryboard(_ storyboard: Storyboard) -> Self {
        return controllerInStoryboard(UIStoryboard(name: storyboard.rawValue, bundle: nil), identifier: String(describing: self))
    }
}

