//
//  BaseCoordinator.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 3/22/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import Foundation

class BaseCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    func start() {}
}

extension BaseCoordinator {
    
    func addCoordinator(_ coordinator: Coordinator) {
        for coord in childCoordinators where coord === coordinator { return }
        childCoordinators.append(coordinator)
    }
    
    func removeCoordinator(_ coordinator: Coordinator?) {
        guard
            let coordinator = coordinator,
            childCoordinators.isEmpty == false
            else { return }
        
        for (index, coord) in childCoordinators.enumerated() where coord === coordinator {
            childCoordinators.remove(at: index)
        }
    }
}
