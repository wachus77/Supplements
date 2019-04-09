//
//  AppCoordinator.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 3/22/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import UIKit

final class ApplicationCoordinator: BaseCoordinator {
    
    private let coordinatorFactory: CoordinatorFactoryProtocol
    private let router: Router
    
    init(router: Router, coordinatorFactory: CoordinatorFactoryProtocol) {
        self.router = router
        self.coordinatorFactory = coordinatorFactory
    }
    
    override func start() {
        runMainFlow()
    }
    
    private func runMainFlow() {
        var coordinator = coordinatorFactory.makeMainCoordinator(router: router)
        
        coordinator.finishFlow = { [unowned self] coordinator in
            self.removeDependency(coordinator)
        }
        
        addDependency(coordinator)
        
        coordinator.start()
    }
}

