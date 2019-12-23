//
//  ViewController.swift
//  calculator
//
//  Created by Keon Min on 12/22/19.
//  Copyright © 2019 Keon Min. All rights reserved.
//

import UIKit

class ViewController:
    UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tapScreen(_ sender: Any) {
        view.endEditing(true) //dismiss the keyboard
    }
    @IBAction func calculateTip(_ sender: Any) {
        // get the bill amount in double
        let bill = Double(billField.text!) ?? 0 // change it to 0 if not valid ?? 0
        
        // calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // update those
//        tipLabel.text = "$\(tip)"
        tipLabel.text =  String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        

    }
}

