//
//  ViewController.swift
//  Tipper
//
//  Created by JK on 8/10/17.
//  Copyright © 2017 JKJK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // automatically cursors the bill field on load
        self.billField.becomeFirstResponder()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated);
        let indexSet = defaults.object(forKey: "defaultTipKey") as! Int
        self.tipControl.selectedSegmentIndex = indexSet;
        self.calculate(self)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        let bill = Double(billField.text!)
        defaults.set( bill , forKey: "lastBill")
    }
    
    
    @IBAction func calculate(_ sender: Any) {
        let percentages = [ 0.18, 0.2, 0.22]
        // main calculations
        let bill = Double(billField.text!) ?? 0
        let tipPercentage = percentages[tipControl.selectedSegmentIndex]
        let tip = bill * tipPercentage
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }

}

