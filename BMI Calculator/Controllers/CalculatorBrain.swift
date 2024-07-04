//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by admin on 7/4/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit


struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String
    {
        let bmiValue = String(format: "%.1f" , bmi?.value ?? 0.0)
        return bmiValue
    }
    func getAdvice() -> String{
        return bmi?.advice ?? "No Advice"
    }
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.blue
    }
    
   mutating func calculateBMI(height: Float , weight: Float)
    {
        let bmiAmount = weight / pow(height , 2)
        if bmiAmount < 18.5{
            bmi = BMI(value: bmiAmount, advice: "Eat More Pancakes", color: UIColor.blue)
        }
        else if bmiAmount < 24.9{
            bmi = BMI(value: bmiAmount, advice: "You Are Fit", color: UIColor.orange)
        }
        else{
            bmi = BMI(value: bmiAmount, advice: "Loose Wieght Fatoo!!", color: UIColor.red)
        }
    }
    
   
   
    
}
