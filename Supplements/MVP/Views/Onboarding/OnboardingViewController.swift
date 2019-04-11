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
    
    var viewControllers: [OnboardingContentViewController] = {
        let firstPage = OnboardingContentViewController.controllerFromStoryboard(.onboarding)
        firstPage.backgroundColor = UIColor.red
        firstPage.index = 0
        
        let secondPage = OnboardingContentViewController.controllerFromStoryboard(.onboarding)
        secondPage.backgroundColor = UIColor.blue
        secondPage.index = 1
        
        let thirdPage = OnboardingContentViewController.controllerFromStoryboard(.onboarding)
        thirdPage.backgroundColor = UIColor.red
        thirdPage.index = 2
        
        var controllers: [OnboardingContentViewController] = [firstPage, secondPage, thirdPage]
        return controllers
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datasource = self
        
        viewControllers.forEach { (controller) in
            controller.presenter = presenter
        }
    }
    
    func numberOfControllersInLiquidSwipeContainer(_ liquidSwipeContainer: LiquidSwipeContainerController) -> Int {
        return viewControllers.count
    }
    
    func liquidSwipeContainer(_ liquidSwipeContainer: LiquidSwipeContainerController, viewControllerAtIndex index: Int) -> UIViewController {
        return viewControllers[index]
    }
}

extension OnboardingViewController: OnboardingViewProtocol {}
