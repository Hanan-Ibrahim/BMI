//
//  BMIBrain.swift
//  BMI
//
//  Created by Hanoudi on 6/26/20.
//  Copyright © 2020 Hanan. All rights reserved.
//
//-----------------------------------------------------------------------//
// This is the BMI Brain, it calculates the BMI given weight and height  //
// -----------Then returns a piece of advice and a color--------------- //

import Foundation
import UIKit

struct BMIBrain {
    
    //  Need a BMI struct to save value, color and advice.
    var bmi: BMI?
    
    //  Calculator-- Needs to be marked as mutating because it amends variables.
    
    mutating func calculateBMI(height: Float, mass: Float) {
        
        let bmiValue = mass / (height * height)

        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Get chubby please!", color: #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Healthy as a horse!", color: #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less sweets...", color: #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1))
        }
    }
    //  MARK:- Getters
    
    func getBMIValue() -> String {
        let bmiToOneDecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToOneDecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice."
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
}
