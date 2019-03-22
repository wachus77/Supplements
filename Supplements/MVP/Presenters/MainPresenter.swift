//
//  MainPresenter.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 3/22/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import Foundation

protocol MainViewDelegate: class {
}

class MainPresenter: MainPresenterProtocol {
    unowned let view: MainViewProtocol
    unowned let delegate: MainViewDelegate
    
    required init(view: MainViewProtocol, delegate: MainViewDelegate) {
        self.view = view
        self.delegate = delegate
    }
}
