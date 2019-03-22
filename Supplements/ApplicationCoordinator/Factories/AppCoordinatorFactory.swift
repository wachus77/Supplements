//
//  AppCoordinatorFactory.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 3/22/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import UIKit

class AppCoordinatorFactory: AppCoordinatorFactoryProtocol {
    func makeMainCoordinator(router: UINavigationController) -> Coordinator & MainCoordinatorOutputProtocol {
        return MainCoordinator(router: router)
    }
}
