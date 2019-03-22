//
//  MainTemplate.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 3/22/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import Foundation
protocol MainViewProtocol: class {
    
}

protocol MainPresenterProtocol: class {
    init(view: MainViewProtocol, delegate: MainViewDelegate)
}

