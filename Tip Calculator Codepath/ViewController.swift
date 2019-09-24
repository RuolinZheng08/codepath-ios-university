//
//  ViewController.swift
//  Tip Calculator Codepath
//
//  Created by Ruolin Zheng on 2019/9/24.
//  Copyright © 2019 Ruolin Zheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let tipPercentages = [0.15, 0.18, 0.2]

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let defaults = UserDefaults.standard
        let prevTime = defaults.object(forKey: "time")
        // less than 10 minutes
        if prevTime != nil && ((NSDate()).timeIntervalSince(prevTime as! Date) < 600) {
            billField.text = String(defaults.double(forKey: "bill"))
        }
        
        tipControl.selectedSegmentIndex = defaults.integer(forKey: "defaultTip")
        // re-calculate tip
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
        let defaults = UserDefaults.standard
        defaults.set(bill, forKey: "bill")
        defaults.set(NSDate(), forKey: "time")
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! SettingsViewController
        vc.tipSelection = tipControl.selectedSegmentIndex
    }
}

