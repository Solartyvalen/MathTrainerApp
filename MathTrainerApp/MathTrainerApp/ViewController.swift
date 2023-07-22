//
//  ViewController.swift
//  MathTrainerApp
//
//  Created by ValenPro on 18.07.2023.
//

import UIKit

enum MathTypes: Int {
    case add, subtract, multiply, divide
}

class ViewController: UIViewController {
    //MARK: - IBOutlets
    @IBOutlet var buttonsCollection: [UIButton]!
    
    //MARK: - Properties
   private var selectedType: MathTypes = .add
    
    //MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureButtons()
    }
    
//MARK: - Actions
    @IBAction func buttonAction(_ sender: UIButton) {
    selectedType = MathTypes(rawValue: sender.tag) ?? .add
    performSegue(withIdentifier: "goToNext", sender: sender)
       
    }
    @IBAction func unwindAction(unwindSegue: UIStoryboardSegue) {}

    //MARK: - Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? TrainViewController{
            viewController.type = selectedType
        }
    }
    
    private func configureButtons() {
        //Add shadow
        buttonsCollection.forEach { button in
            button.layer.shadowColor = UIColor.darkGray.cgColor
            button.layer.shadowOffset = CGSize(width: 1, height: 2)
            button.layer.shadowOpacity = 0.4
            button.layer.shadowRadius = 3
        }
    }
}

