//
//  OnboardingContentViewController.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 4/11/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import UIKit

class OnboardingContentViewController: UIViewController {
    
    var presenter: OnboardingPresenterProtocol!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var contentImageView: UIImageView!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var progressStackView: UIStackView!
    
    var backgroundColor: UIColor = .red
    
    var titleText: String = "Supplements"
    
    var descriptionText: String = "great creatine"
    
    var contentImage: UIImage = UIImage(named: "supple_wall")!
    
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = backgroundColor
        titleLabel.text = titleText
        descriptionLabel.text = descriptionText
        contentImageView.image = contentImage
        
        for (index, view) in progressStackView.subviews.enumerated() {
            if index == self.index {
                view.backgroundColor = backgroundColor == .red ? .blue : .red
                break
            }
        }
    }
    
    @IBAction func closeTapped(_ sender: Any) {
        presenter.closeOnboarding()
    }
}
