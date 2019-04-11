//
//  OnboardingTemplate.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 4/11/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import Foundation
protocol OnboardingViewProtocol: class {
    
}

protocol OnboardingPresenterProtocol: class {
    init(view: OnboardingViewProtocol, delegate: OnboardingViewDelegate)
}
