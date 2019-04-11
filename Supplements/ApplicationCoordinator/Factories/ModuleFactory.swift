//
//  MainModuleFactory.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 3/22/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import UIKit

final class ModuleFactory: MainModuleFactoryProtocol, OnboardingModuleFactoryProtocol {
    
    func makeMainOutput() -> MainViewController {
        return MainViewController.controllerFromStoryboard(.main)
    }
    
    func makeOnboardingOutput() -> OnboardingViewController {
        return OnboardingViewController.controllerFromStoryboard(.onboarding)
    }
    
}
