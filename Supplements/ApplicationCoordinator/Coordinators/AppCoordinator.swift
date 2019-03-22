//
//  AppCoordinator.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 3/22/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import UIKit

class AppCoordinator: BaseCoordinator {
    private var navigationController: UINavigationController
    private let coordinatorFactory: AppCoordinatorFactoryProtocol
    
    init(navigationController: UINavigationController) {
        coordinatorFactory = AppCoordinatorFactory()
        self.navigationController = navigationController
    }
    
    override func start() {
        runMainFlow()
    }
    
    private func runMainFlow() {
        var coordinator = coordinatorFactory.makeMainCoordinator(router: navigationController)
        
        coordinator.finishFlow = { [unowned self] coordinator in
            self.removeCoordinator(coordinator)
        }
        
        addCoordinator(coordinator)
        
        coordinator.start()
    }
}

