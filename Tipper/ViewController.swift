//
//  ViewController.swift
//  Tipper
//
//  Created by JK on 8/10/17.
//  Copyright © 2017 JKJK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipPercentField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.billField.becomeFirstResponder()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func calculate(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
        let tipPercentage = Double(tipPercentField.text!) ?? 0
        let tip = bill * (tipPercentage/100)
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }

}

