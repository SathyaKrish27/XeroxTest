//
//  IPDetailsModel.swift
//  XeroxTest
//
//  Created by Dilipkumar Ashok on 26/04/23.
//

import Foundation

struct IPDetailsModel: Codable {
    
    let ip: String
    let city: String
    let region: String
    let country: String
    let loc: String
    let org: String
    let postal: String
    let timezone: String
    let readme: String
    
}

struct IPInfoModel: Codable {
    
    let ipAddress: String
    let deviceName: String
    let deviceStatus: String
}
