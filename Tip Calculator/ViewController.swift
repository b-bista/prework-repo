//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Bikranta on 12/30/18.
//  Copyright © 2018 Bikranta. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    
    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var tipPercentField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var priceTotal: UILabel!
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func calculateTip(_ sender: Any) {
        
        let billAmount = Double(self.priceTextField.text ?? "") ?? 0
        let tipPercentage = Double(self.tipPercentField.text ?? "") ?? 0
        
        let tipAmount = (billAmount * tipPercentage)
        self.tipAmountLabel.text = "$" + String (format: "%.2f", tipAmount)
        
        let total = (billAmount + tipAmount)
        self.priceTotal.text = "$" + String (format: "%.2f", total)
    }

    
    
}

