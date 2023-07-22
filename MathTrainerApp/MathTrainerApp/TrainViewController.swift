//
//  TrainViewController.swift
//  MathTrainerApp
//
//  Created by ValenPro on 20.07.2023.
//

import UIKit

final class TrainViewController: UIViewController {
    // MARK: - Properties
    var type: MathTypes = .add {
        didSet {
            print(type)
        }
    }
}

