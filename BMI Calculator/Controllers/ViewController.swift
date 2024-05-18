//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    var calculatorBrain = CalculatorBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func changeHeight(_ sender: UISlider) {
        heightLabel.text = "\(String(format:"%.0f",sender.value))cm"
    }
    
    @IBAction func changeWeight(_ sender: UISlider) {
        weightLabel.text =  "\(String(format:"%.0f",sender.value))Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let w =  weightSlider.value
        let h = heightSlider.value/100
        calculatorBrain.calculateBMI(h: h, w: w)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "goToResult"){
            let destinationVC = segue.destination as! ResultController
            destinationVC.bmi = calculatorBrain
        }
    }
    
}

