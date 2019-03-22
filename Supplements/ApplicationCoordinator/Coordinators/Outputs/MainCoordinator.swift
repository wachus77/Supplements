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
    
    private let factory: MainFactoryProtocol
    private let router: UINavigationController
    private let presenterFactory: MainPresenterFactoryProtocol
    
    init(router: UINavigationController) {
        self.router = router
        presenterFactory = MainPresenterFactory()
        factory = MainModuleFactory()
    }
    
    override func start() {
        runMainView()
    }
    
    private func runMainView() {
        let mainOutput = factory.makeMainOutput()
        let presenter = presenterFactory.makeMainPresenter(view: mainOutput, delegate: self)
        
        mainOutput.presenter = presenter
        
        router.setViewControllers([mainOutput], animated: false)
    }
    
}

extension MainCoordinator: MainViewDelegate { }
