//
//  CoordinatorOutput.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 3/22/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import Foundation

typealias CoordinatorOutput = (_ coordinator: Coordinator?) -> Void
typealias CoordinatorOutputWithParameter = (_ coordinator: Coordinator?, Bool) -> Void

protocol CoordinatorOutputProtocol {
    var finishFlow: (CoordinatorOutput)? { get set }
}
