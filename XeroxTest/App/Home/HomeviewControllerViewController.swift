//
//  HomeViewController.swift
//  XeroxTest
//
//  Created by Dilipkumar Ashok on 26/04/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var devicesTableview: UITableView!
    private var arrayOfDevices: [IPInfoModel] = [IPInfoModel(ipAddress: "Test Ip 1", deviceName: "iPhone 11", deviceStatus: "Reachable"), IPInfoModel(ipAddress: "Test Ip 2", deviceName: "iPhone 12", deviceStatus: "Reachable"), IPInfoModel(ipAddress: "Test Ip 3", deviceName: "iPhone XR", deviceStatus: "Reachable")]
   
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == AppStrings.Segue.goToIpDetails) {
            let controller = AppNavigation.shared.getIpDetailsViewController()
        }
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.arrayOfDevices.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reuseId: String = AppStrings.CellReuseId.homeTableViewCell
        tableView.register(UINib(nibName: AppStrings.TableViewCell.homeTableViewCell, bundle: nil), forCellReuseIdentifier: reuseId)
        if let cell: HomeTableViewCell = tableView.dequeueReusableCell(withIdentifier: reuseId, for: indexPath) as? HomeTableViewCell {
            cell.deviceNameLabel.text = self.arrayOfDevices[indexPath.row].deviceName
            cell.ipAddressLabel.text = self.arrayOfDevices[indexPath.row].ipAddress
            cell.deviceStatusLabel.text = self.arrayOfDevices[indexPath.row].deviceStatus
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
        self.performSegue(withIdentifier: AppStrings.Segue.goToIpDetails, sender: indexPath)
       
    }
}
