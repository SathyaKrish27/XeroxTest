//
//  AppUtils.swift
//  XeroxTest
//
//  Created by Dilipkumar Ashok on 26/04/23.
//

import Foundation
struct AppStrings {
    
    struct API {
        static let ipifyUrl = "https://api.ipify.org?format=json"
        static let ipinfo = "https://ipinfo.io/"
    }
    struct Storyboard {
        static let login = "Main"
        static let home = "Home"
        static let ip = "IP"
    }
    struct ViewController {
        static let loginViewController = "LoginViewController"
        static let homeViewController = "HomeViewController"
        static let iPViewController = "IPViewController"
    }
    
    struct TableViewCell {
        static let homeTableViewCell = "HomeTableViewCell"
    }
    
    struct CellReuseId {
        static let homeTableViewCell =  "homeTableViewCell"
    }
    struct Segue {
        static let goToIpDetails = "goToIpDetails"
    }
    
    struct PersistentService {
        static let xeroxTest = "XeroxTest"
        static let airPlayDevices = "AirPlayDevices"
        
    }
    
}

