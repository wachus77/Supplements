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
    
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = backgroundColor
        presenter.getTitleImageAndDescOfContentView(index: index)
        
        for (index, view) in progressStackView.subviews.enumerated() {
            if index == self.index {
                view.backgroundColor = backgroundColor == .onboardingLightRed ? .onboardingRed : .onboardingLightRed
                break
            }
        }
    }
    
    func setTitleImageAndDescOfContentView(title: String, desc: String, image: UIImage) {
        titleLabel.text = title
        descriptionLabel.text = desc
        contentImageView.image = image
    }
    
    @IBAction func closeTapped(_ sender: Any) {
        presenter.closeOnboarding()
    }
}
