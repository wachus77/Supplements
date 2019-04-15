//
//  OnboardingTemplate.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 4/11/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import Foundation
import UIKit

protocol OnboardingViewProtocol: class {
   func setTitleImageAndDescOfContentView(index: Int, title: String, desc: String, image: UIImage)
}

protocol OnboardingPresenterProtocol: class {
    init(view: OnboardingViewProtocol, delegate: OnboardingViewDelegate)
    func closeOnboarding()
    func getTitleImageAndDescOfContentView(index: Int)
}
