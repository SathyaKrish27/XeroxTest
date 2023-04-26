//
//  HomeViewController.swift
//  XeroxTest
//
//  Created by Dilipkumar Ashok on 26/04/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var devicesTableview: UITableView!
    private var arrayOfDevices: [String] = ["Test A", "Test B", "Test C"]
   
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "goToIpDetails") {
            let controller = AppNavigation.shared.getIpDetailsViewController()
            
        }
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.arrayOfDevices.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reuseId: String = "homeTableViewCell"
        tableView.register(UINib(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: reuseId)
        if let cell: HomeTableViewCell = tableView.dequeueReusableCell(withIdentifier: reuseId, for: indexPath) as? HomeTableViewCell {
            cell.deviceNameLabel.text = self.arrayOfDevices[indexPath.row]
            cell.ipAddressLabel.text = self.arrayOfDevices[indexPath.row]
            cell.deviceStatusLabel.text = self.arrayOfDevices[indexPath.row]
            return cell
        }
        return UITableViewCell()
    }
}


extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "goToIpDetails", sender: indexPath)
       
    }
}
