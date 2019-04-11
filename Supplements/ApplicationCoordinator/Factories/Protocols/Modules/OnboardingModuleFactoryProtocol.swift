//
//  OnboardingModuleFactoryProtocol.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 4/11/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

protocol OnboardingModuleFactoryProtocol {
    func makeOnboardingOutput() -> OnboardingViewController
    func makeOnboardingContentOutput() -> OnboardingContentViewController
}
