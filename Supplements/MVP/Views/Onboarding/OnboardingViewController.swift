//
//  OnboardingViewController.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 4/11/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import UIKit
import liquid_swipe

let onRedColor = UIColor.init(red: 242, green: 96, blue: 96, alpha: 1)

class OnboardingViewController: LiquidSwipeContainerController, LiquidSwipeContainerDataSource {
    var presenter: OnboardingPresenterProtocol!
    
    var viewControllers: [OnboardingContentViewController] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers.forEach { (controller) in
            switch controller.index {
            case 0:
                controller.backgroundColor = .onboardingLightRed
            case 1:
                controller.backgroundColor = .onboardingRed
            case 2:
                controller.backgroundColor = .onboardingLightRed
            default:
                controller.backgroundColor = .onboardingLightRed
            }
        }
        
        datasource = self
    }
    
    func numberOfControllersInLiquidSwipeContainer(_ liquidSwipeContainer: LiquidSwipeContainerController) -> Int {
        return viewControllers.count
    }
    
    func liquidSwipeContainer(_ liquidSwipeContainer: LiquidSwipeContainerController, viewControllerAtIndex index: Int) -> UIViewController {
        return viewControllers[index]
    }
}

extension OnboardingViewController: OnboardingViewProtocol {}
