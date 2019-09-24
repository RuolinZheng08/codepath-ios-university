//
//  SettingsViewController.swift
//  Tip Calculator Codepath
//
//  Created by Ruolin Zheng on 2019/9/24.
//  Copyright © 2019 Ruolin Zheng. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    var tipSelection = 0
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tipControl.selectedSegmentIndex = tipSelection
    }
    
    @IBAction func changeTipSelection(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(tipControl.selectedSegmentIndex, forKey: "defaultTip")
        defaults.synchronize()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
