
//  ViewController.swift
//  Prework

//  Created by kishan on 03/08/21.
//  Copyright © 2021 kishan. All rights reserved.
//

import UIKit;


class ViewController: UIViewController {
    @IBOutlet  weak  var billedAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calculatorTip(_ sender: Any){
        
        let bill = Double(billedAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill+tip
        
        tipAmountLabel.text=String(format: "$%.2f", tip)
        
        totalLabel.text = String ( format: "$%.2f", total)
        
    

}
}

