//
//  ViewController.swift
//  XeroxTest
//
//  Created by Dilipkumar Ashok on 26/04/23.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //
    }
    
    @IBAction func oAuthLoginAction(_ sender: Any) {
        GIDSignIn.sharedInstance.signIn(withPresenting: self) { signInResult, error in
            guard error == nil else { return }
            AppNavigation.shared.navigateToDashboard()
          }
    }
    
}

