//
//  LoginViewController.swift
//  Twitter
//
//  Created by Ruolin Zheng on 2019/11/1.
//  Copyright © 2019 Dan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onLoginButton(_ sender: Any) {
        let myUrl = "https://api.twitter.com/oauth/request_token"
        TwitterAPICaller.client?.login(url: myUrl, success: {
            self.performSegue(withIdentifier: "loginSegue", sender: self)
        }, failure: {(Error) in
            print("Could not log in!")
        })
    }

}
