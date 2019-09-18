//
//  LoginController.swift
//  Medium Tut
//
//  Created by Deonte on 9/18/19.
//  Copyright © 2019 Deonte. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    var loginView = LoginView()
    
    override func loadView() {
        view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
}
