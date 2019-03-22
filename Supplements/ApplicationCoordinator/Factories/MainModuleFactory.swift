//
//  MainModuleFactory.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 3/22/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import UIKit

class MainModuleFactory: MainFactoryProtocol {
    
    func makeMainOutput() -> MainViewController {
        return MainViewController.controllerFromStoryboard(.main)
    }
}
