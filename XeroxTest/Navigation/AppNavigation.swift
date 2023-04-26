//
//  AppNavigation.swift
//  XeroxTest
//
//  Created by Dilipkumar Ashok on 26/04/23.
//

import Foundation
import UIKit

class AppNavigation {
    static let shared = AppNavigation()
    
     func navigateToDashboard() {
        let home: UIStoryboard = UIStoryboard(name: "Home", bundle: nil)
        if let homeViewController = home.instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewController {
            DispatchQueue.main.async {
                UIApplication.shared.keyWindow?.rootViewController = homeViewController
                UIApplication.shared.keyWindow?.makeKeyAndVisible()
            }
        }
        
    }
}
