//
//  SettingsViewController.swift
//  Tipper
//
//  Created by JK on 8/10/17.
//  Copyright © 2017 JKJK. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    

    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let indexSet = defaults.object(forKey: "defaultTipKey") as! Int
        self.defaultTipControl.selectedSegmentIndex = indexSet
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func updateDefault(_ sender: Any) {
        let percentageIndex = defaultTipControl.selectedSegmentIndex
        defaults.set( percentageIndex , forKey: "defaultTipKey")
        defaults.synchronize()
    }
}
