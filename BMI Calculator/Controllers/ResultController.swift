//
//  ResultController.swift
//  BMI Calculator
//
//  Created by Fadil Kurniawan on 18/05/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultController: UIViewController {
    var bmi : CalculatorBrain?
    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var btnRecall: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmi?.getBMIValue()
        adviceLabel.text = bmi?.getAdvice()
        view.backgroundColor = bmi?.getColor()
        
    }

    @IBAction func recallPress(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
