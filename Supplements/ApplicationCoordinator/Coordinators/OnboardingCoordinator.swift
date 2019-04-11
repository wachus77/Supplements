//
//  OnboardingCoordinator.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 4/11/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import Foundation

class OnboardingCoordinator: BaseCoordinator, OnboardingCoordinatorOutput {
    
    var finishFlow: (() -> Void)?
    
    private let factory: OnboardingModuleFactoryProtocol
    private let router: Router
    private let presenterFactory: OnboardingPresenterFactoryProtocol
    
    init(with factory: OnboardingModuleFactoryProtocol, presenterFactory: OnboardingPresenterFactoryProtocol, router: Router) {
        self.factory = factory
        self.presenterFactory = presenterFactory
        self.router = router
    }
    
    override func start() {
        showOnboarding()
    }
    
    func showOnboarding() {
        let onboardingOutput = factory.makeOnboardingOutput()
        
        let onboardingContentOutputFirst = factory.makeOnboardingContentOutput()
        onboardingContentOutputFirst.index = 0
        let onboardingContentOutputSecond = factory.makeOnboardingContentOutput()
        onboardingContentOutputSecond.index = 1
        let onboardingContentOutputThird = factory.makeOnboardingContentOutput()
        onboardingContentOutputThird.index = 2
        
        let presenter = presenterFactory.makeOnboardingPresenter(view: onboardingOutput, delegate: self)
        onboardingOutput.presenter = presenter
        onboardingContentOutputFirst.presenter = presenter
        onboardingContentOutputSecond.presenter = presenter
        onboardingContentOutputThird.presenter = presenter
        
        onboardingOutput.viewControllers = [onboardingContentOutputFirst, onboardingContentOutputSecond, onboardingContentOutputThird]
        router.setRootModule(onboardingOutput.toPresent(), hideBar: true)
    }
}

extension OnboardingCoordinator: OnboardingViewDelegate {
    
    func finish() {
        self.finishFlow?()
    }
    
}
