//
//  ViewController.swift
//  Classes, Inheritance, And Advanced Optionals Practice
//
//  Created by Michael Grant on 11/18/19.
//  Copyright © 2019 Michael Grant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func heightSliderChanged(_ sender: Any) {
        
        let height = String(format: "%.2f", heightSlider.value)
        heightLabel.text = "\(height)m"
        
    }
    
    @IBAction func weightSliderChanged(_ sender: Any) {
        
        weightLabel.text = "\(Int(weightSlider.value))Kg"
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let BMI = weight / pow(height, 2)
        
        print(BMI)
        
        
    }
    
}

