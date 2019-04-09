//
//  MainPresenterFactory.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 3/22/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import Foundation

class PresenterFactory: MainPresenterFactoryProtocol {
    func makeMainPresenter(view: MainViewProtocol, delegate: MainViewDelegate) -> MainPresenterProtocol {
        return MainPresenter(view: view, delegate: delegate)
    }
}
