//
//  AppCoordinatorFactory.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 3/22/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import UIKit

final class CoordinatorFactory: CoordinatorFactoryProtocol {
    
    func makeMainCoordinator(router: Router) -> Coordinator & MainCoordinatorOutputProtocol {
        return MainCoordinator(with: ModuleFactory(), coordinatorFactory: CoordinatorFactory(), presenterFactory: PresenterFactory(), router: router)
    }
    
}
