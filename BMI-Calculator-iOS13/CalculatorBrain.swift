//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ray Jay on 7/1/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    //declare bmi of struct type BMI
    var bmi: BMI?
    
    //Return the String contained in the BMI struct
    func getBMIValue() -> String {
        let bmiTo1DecimalString = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalString
    }
    
    //Three conditions for BMI
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more food", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
            print("underweight")
        } else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Normal Weight", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
            print("normal weight")
        } else {
            bmi = BMI(value: bmiValue, advice: "Over Weight", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
            print("overweight")
        }
    }

    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
