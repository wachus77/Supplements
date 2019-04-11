//
//  OnboardingViewController.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 4/11/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import UIKit
import liquid_swipe

class OnboardingViewController: LiquidSwipeContainerController, LiquidSwipeContainerDataSource {
    var presenter: OnboardingPresenterProtocol!
    
    var viewControllers: [OnboardingContentViewController] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers.forEach { (controller) in
            switch controller.index {
            case 0:
                controller.backgroundColor = .red
            case 1:
                controller.backgroundColor = .blue
            case 2:
                controller.backgroundColor = .red
            default:
                controller.backgroundColor = .red
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
