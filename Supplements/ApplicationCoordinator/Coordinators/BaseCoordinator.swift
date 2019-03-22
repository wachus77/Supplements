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
    
    func removeCoordinator(_ coordiantor: Coordinator?) {
        guard
            let coordiantor = coordiantor,
            childCoordinators.isEmpty == false
            else { return }
        
        for (index, coord) in childCoordinators.enumerated() where coord === coordiantor {
            childCoordinators.remove(at: index)
        }
    }
}
