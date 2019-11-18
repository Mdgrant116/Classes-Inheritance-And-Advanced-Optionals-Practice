//
//  ResultsViewController.swift
//  Classes, Inheritance, And Advanced Optionals Practice
//
//  Created by Michael Grant on 11/18/19.
//  Copyright © 2019 Michael Grant. All rights reserved.
//


import UIKit

class ResultsViewController: UIViewController {
    
    var bmiValue: String?
    
    @IBOutlet var bmiLabel: UILabel!
    @IBOutlet var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        
    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
}
