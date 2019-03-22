//
//  MainViewController.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 3/22/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    var presenter: MainPresenterProtocol!
}

extension MainViewController: MainViewProtocol {}
