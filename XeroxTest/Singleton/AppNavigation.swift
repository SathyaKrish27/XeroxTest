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
        let home: UIStoryboard = UIStoryboard(name: AppStrings.Storyboard.home, bundle: nil)
        if let homeViewController = home.instantiateViewController(withIdentifier: AppStrings.ViewController.homeViewController) as? HomeViewController {
            DispatchQueue.main.async {
                UIApplication.shared.keyWindow?.rootViewController = homeViewController
                UIApplication.shared.keyWindow?.makeKeyAndVisible()
            }
        }
    }
    
    
    func getIpDetailsViewController() -> UIViewController {
        let home: UIStoryboard = UIStoryboard(name: AppStrings.Storyboard.ip, bundle: nil)
        if let ipViewController = home.instantiateViewController(withIdentifier: AppStrings.ViewController.iPViewController) as? IPViewController {
            return ipViewController
        }
        return UIViewController()
    }
}
