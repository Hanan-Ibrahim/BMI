//
//  CalculateViewController.swift
//  BMI
//
//  Created by Hanoudi on 6/24/20.
//  Copyright © 2020 Hanan. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    //  Need a BMIBrain to calculate BMI value.
    var bmiBrain = BMIBrain()

    //  Height outlets
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    
    //  Mass outlets
    @IBOutlet weak var massLabel: UILabel!
    @IBOutlet weak var massSlider: UISlider!
    
    //  MARK:- Functions
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        massLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        // return selected values
        let height = heightSlider.value
        let mass = massSlider.value

        bmiBrain.calculateBMI(height: height, mass: mass)
        performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    //  View's Life Cycle.
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmiBrain.getBMIValue()
            destinationVC.advice = bmiBrain.getAdvice()
            destinationVC.color = bmiBrain.getColor()
        }
    }

}

