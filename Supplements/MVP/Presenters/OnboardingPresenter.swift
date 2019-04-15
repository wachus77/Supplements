//
//  OnboardingPresenter.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 4/11/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import Foundation
import UIKit

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
    
    func getTitleImageAndDescOfContentView(index: Int) {
        var title = ""
        var desc = ""
        switch index {
        case 0:
            title = OnboardingScreen.firstScreenTitle.localized
            desc = OnboardingScreen.firstScreenDesc.localized
        case 1:
            title = OnboardingScreen.secondScreenTitle.localized
            desc = OnboardingScreen.secondScreenDesc.localized
        case 2:
            title = OnboardingScreen.thirdScreenTitle.localized
            desc = OnboardingScreen.thirdScreenDesc.localized
        default:
            title = OnboardingScreen.firstScreenTitle.localized
            desc = OnboardingScreen.firstScreenDesc.localized
        }
        
        view.setTitleImageAndDescOfContentView(index: index, title: title, desc: desc, image: UIImage(named:"supple_wall")!)
    }
}
