//
//  OnboardingPresenterFactoryProtocol.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 4/11/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import Foundation

protocol OnboardingPresenterFactoryProtocol {
    func makeOnboardingPresenter(view: OnboardingViewProtocol, delegate: OnboardingViewDelegate) -> OnboardingPresenterProtocol
}
