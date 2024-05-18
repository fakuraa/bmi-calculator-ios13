//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Fadil Kurniawan on 18/05/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var bmi : BMI?
    
    mutating func calculateBMI(h:Float,  w:Float){
        var bmiValue = w / ( h * h )
        var advice = ""
        if( bmiValue < 18.5){
            bmi = BMI(value: bmiValue, advice: "EAT More.. !", color: .cyan)
        }else if( bmiValue >= 18.5 && bmiValue <= 24.9){
            bmi = BMI(value: bmiValue, advice: "Keep it up ", color: .green)
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat less.. !", color: .red)
        }
    }
    
    func getBMIValue()->String{return "\(String(format: "%.1f", bmi?.value ?? 0.0))"}
    func getAdvice()->String{return bmi?.advice ?? ""}
    func getColor()->UIColor{return bmi?.color ?? .white}
}
