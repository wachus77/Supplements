//
//  AppCoordinator.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 3/22/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import UIKit

class AppCoordinator: BaseCoordinator {
    private var router: Router
    private let coordinatorFactory: AppCoordinatorFactoryProtocol
    
    init(router: Router) {
        coordinatorFactory = AppCoordinatorFactory()
        self.router = router
    }
    
    override func start() {
        runMainFlow()
    }
    
    private func runMainFlow() {
        var coordinator = coordinatorFactory.makeMainCoordinator(router: router)
        
        coordinator.finishFlow = { [unowned self] coordinator in
            self.removeCoordinator(coordinator)
        }
        
        addCoordinator(coordinator)
        
        coordinator.start()
    }
}

