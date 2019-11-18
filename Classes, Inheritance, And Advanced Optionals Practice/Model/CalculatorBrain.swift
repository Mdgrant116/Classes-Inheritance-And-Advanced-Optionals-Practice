//
//  CalculatorBrain.swift
//  Classes, Inheritance, And Advanced Optionals Practice
//
//  Created by Michael Grant on 11/18/19.
//  Copyright © 2019 Michael Grant. All rights reserved.
//

import Foundation
import UIKit
struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        
        return bmiTo1DecimalPlace
        
    }
    
    func getAdvice() -> String {
        
        return bmi?.advice ?? "No advice"
        
    }
    
    func getColor() -> UIColor {
        
        return bmi?.color ?? .white
        
    }
    
    mutating func calculateBMI(height : Float, weight: Float) {
        
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            
            bmi = BMI(value: bmiValue, advice: "A Little Under", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
            
        } else if bmiValue < 24.9 {
            
            bmi = BMI(value: bmiValue, advice: "Fit As A Fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            
            bmi = BMI(value: bmiValue, advice: "A Little Over", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
            
        }
        
    }
    
}
