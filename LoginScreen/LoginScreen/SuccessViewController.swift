//
//  SuccessViewController.swift
//  UserDefaultsTest
//
//  Created by Soeng Saravit on 12/7/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class SuccessViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func signOutButton(_ sender: Any) {
        self.performSegue(withIdentifier: "signOutAction", sender: nil)
    }

}
