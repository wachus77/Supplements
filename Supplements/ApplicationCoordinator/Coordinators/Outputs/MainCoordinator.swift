//
//  MainCoordinator.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 3/22/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import UIKit

class MainCoordinator: BaseCoordinator, MainCoordinatorOutputProtocol {
    var finishFlow: (CoordinatorOutput)?
    
    private let factory: MainModuleFactoryProtocol
    private let router: Router
    private let presenterFactory: MainPresenterFactoryProtocol
    
    init(router: Router) {
        self.router = router
        presenterFactory = PresenterFactory()
        factory = ModuleFactory()
    }
    
    override func start() {
        runMainView()
    }
    
    private func runMainView() {
        let mainOutput = factory.makeMainOutput()
        let presenter = presenterFactory.makeMainPresenter(view: mainOutput, delegate: self)
        
        mainOutput.presenter = presenter
        
        router.setRootModule(mainOutput.toPresent())
    }
    
}

extension MainCoordinator: MainViewDelegate { }
