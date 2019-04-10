//
//  File.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 3/22/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import Foundation

protocol MainCoordinatorOutputProtocol {
    var finishFlow : (() -> Void)? { get set }
}
