//
//  TrainViewController.swift
//  MathTrainerApp
//
//  Created by ValenPro on 20.07.2023.
//

import UIKit

final class TrainViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet var secondButtonsCollection: [UIButton]!
    
    
    // MARK: - Properties
    var type: MathTypes = .add {
        didSet {
            print(type)
        }
    }
    // MARK: - Life cicle
    override func viewDidLoad() {
        configureSecondButtons()
    }
    //MARK: - Methods
    private func configureSecondButtons() {
        //Add shadow
        secondButtonsCollection.forEach { button in
            button.layer.shadowColor = UIColor.darkGray.cgColor
            button.layer.shadowOffset = CGSize(width: 1, height: 2)
            button.layer.shadowOpacity = 0.4
            button.layer.shadowRadius = 3
        }
    }
}

