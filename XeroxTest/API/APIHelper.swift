//
//  APIHelper.swift
//  XeroxTest
//
//  Created by Dilipkumar Ashok on 26/04/23.
//

import Foundation




class ApiHelper {
    static let shared = ApiHelper()
    func getIpAddress() -> String {
        var currentIp: String = ""
        guard let url = URL(string: AppStrings.API.ipifyUrl) else{
            return ""
        }

        let task = URLSession.shared.dataTask(with: url){
            data, response, error in
            if let data = data, let string = String(data: data, encoding: .utf8){
                print(string)
                currentIp = string
                
            }
        }

        task.resume()
        return currentIp
    }
    func fetchIpDetails(ip: String, completionHandler: @escaping (IPDetailsModel) -> Void) {
        let url = URL(string: AppStrings.API.ipinfo + "geo/")!
        
        let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
            if let error = error {
                print("Error with fetching films: \(error)")
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse,
                  (200...299).contains(httpResponse.statusCode) else {
                print("Error with the response, unexpected status code: \(response)")
                return
            }
            
            if let data = data,
               let ipSummary = try? JSONDecoder().decode(IPDetailsModel.self, from: data) {
                completionHandler(ipSummary)
            }
        })
        task.resume()
    }
}
