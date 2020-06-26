//
//  ResultViewController.swift
//  BMI
//
//  Created by Hanoudi on 6/26/20.
//  Copyright © 2020 Hanan. All rights reserved.
//

import Foundation
import UIKit

class ResultViewController: UIViewController {
    
    //  MARK:- Variables
    //  Variables the result view need to display
    //  Passed on from calcule view controller and set there.
    var bmiValue: String?
    var advice: String?
    var color: UIColor?

    //  MARK:- Outlets.
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    //  MARK:- Functions.
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    //  MARK:- View's life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        adviceLabel.textColor = color
    }
    

    

}
