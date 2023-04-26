//
//  IPViewController.swift
//  XeroxTest
//
//  Created by Dilipkumar Ashok on 26/04/23.
//

import UIKit

class IPViewController: UIViewController {
    @IBOutlet weak var ipName: UILabel!
    @IBOutlet weak var ipCityLabel: UILabel!
    
    @IBOutlet weak var ipLocLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.getCurrentIPDetails()
    }
}

extension IPViewController {
    fileprivate func getCurrentIPDetails() {
        let currentMachineIp = ApiHelper.shared.getIpAddress()
        ApiHelper.shared.fetchIpDetails(ip: currentMachineIp) { model in
            
            DispatchQueue.main.async {
                self.ipName.text = model.ip
                self.ipCityLabel.text = model.city
                self.ipLocLabel.text = model.loc
            }
            
            
        }
    }
}
