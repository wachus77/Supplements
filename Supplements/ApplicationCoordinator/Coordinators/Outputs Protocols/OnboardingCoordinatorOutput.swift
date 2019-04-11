//
//  OnboardingCoordinatorOutput.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 4/11/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import Foundation

protocol OnboardingCoordinatorOutput: class {
    var finishFlow: (() -> Void)? { get set }
}
