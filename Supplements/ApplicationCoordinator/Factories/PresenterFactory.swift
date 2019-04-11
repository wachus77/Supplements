//
//  MainPresenterFactory.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 3/22/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import Foundation

final class PresenterFactory: MainPresenterFactoryProtocol, OnboardingPresenterFactoryProtocol {
    func makeMainPresenter(view: MainViewProtocol, delegate: MainViewDelegate) -> MainPresenterProtocol {
        return MainPresenter(view: view, delegate: delegate)
    }
    
    func makeOnboardingPresenter(view: OnboardingViewProtocol, delegate: OnboardingViewDelegate) -> OnboardingPresenterProtocol {
        return OnboardingPresenter(view: view, delegate: delegate)
    }
}
