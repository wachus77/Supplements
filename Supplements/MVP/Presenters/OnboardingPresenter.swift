//
//  OnboardingPresenter.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 4/11/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import Foundation

protocol OnboardingViewDelegate: class {
    func finish()
}

class OnboardingPresenter: OnboardingPresenterProtocol {
    unowned let view: OnboardingViewProtocol
    unowned let delegate: OnboardingViewDelegate
    
    required init(view: OnboardingViewProtocol, delegate: OnboardingViewDelegate) {
        self.view = view
        self.delegate = delegate
    }
    
    func closeOnboarding() {
        delegate.finish()
    }
}
