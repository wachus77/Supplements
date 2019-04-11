//
//  OnboardingViewController.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 4/11/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController {
    var presenter: OnboardingPresenterProtocol!
    
    @IBAction func closeTapped(_ sender: Any) {
        presenter.closeOnboarding()
    }
}

extension OnboardingViewController: OnboardingViewProtocol {}
