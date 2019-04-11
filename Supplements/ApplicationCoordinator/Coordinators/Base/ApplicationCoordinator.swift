//
//  AppCoordinator.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 3/22/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import UIKit
import SwiftyUserDefaults

fileprivate var onboardingWasShown: Bool {
    get {
        return Defaults[.onboardingWasShown]
    }
    
    set(value) {
        Defaults[.onboardingWasShown] = value
    }
}

fileprivate enum LaunchInstructor {
    case main, onboarding
    
    static func configure(
        tutorialWasShown: Bool = onboardingWasShown) -> LaunchInstructor {
        
        if tutorialWasShown {
            return .main
        } else {
            return .onboarding
        }
    }
}

final class ApplicationCoordinator: BaseCoordinator {
    
    private let coordinatorFactory: CoordinatorFactoryProtocol
    private let router: Router
    
    private var instructor: LaunchInstructor {
        return LaunchInstructor.configure()
    }
    
    init(router: Router, coordinatorFactory: CoordinatorFactoryProtocol) {
        self.router = router
        self.coordinatorFactory = coordinatorFactory
    }
    
    override func start() {
        switch instructor {
        case .onboarding: runOnboardingFlow()
        case .main: runMainFlow()
        }
    }
    
    private func runMainFlow() {
        var coordinator = coordinatorFactory.makeMainCoordinator(router: router)
        
        coordinator.finishFlow = { [weak self, weak coordinator] in
            guard let strongSelf = self, let coordinator = coordinator else { return }
            strongSelf.removeDependency(coordinator)
        }
        
        addDependency(coordinator)
        coordinator.start()
    }
    
    private func runOnboardingFlow() {
        let coordinator = coordinatorFactory.makeOnboardingCoordinator(router: router)
        
        coordinator.finishFlow = { [weak self, weak coordinator] in
            onboardingWasShown = true
            self?.start()
            self?.removeDependency(coordinator)
        }
        
        addDependency(coordinator)
        coordinator.start()
    }
}

