//
//  AppCoordinatorFactoryProtocol.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 3/22/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import UIKit

protocol CoordinatorFactoryProtocol {
    func makeMainCoordinator(router: Router) -> Coordinator & MainCoordinatorOutputProtocol
}
