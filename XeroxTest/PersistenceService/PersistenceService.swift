//
//  Database.swift
//  XeroxTest
//
//  Created by Dilipkumar Ashok on 26/04/23.
//

import UIKit
import CoreData

class PersistenceService {
    
    static let appDelegate = UIApplication.shared.delegate as! AppDelegate
    static let context = appDelegate.persistentContainer.viewContext
    
    class func write() {
        let entity = NSEntityDescription.entity(forEntityName: AppStrings.PersistentService.airPlayDevices, in: context)
        let managedObject = NSManagedObject(entity: entity!, insertInto: context)
        
        do {
            try context.save()
            
        } catch {
            print("Failed saving")
        }
    }
    
    class func read() {
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: AppStrings.PersistentService.airPlayDevices)
        request.returnsObjectsAsFaults = false
        
        do {
            let result = try context.fetch(request)
            for data in result as! [NSManagedObject] {
                print(data.value(forKey: "deviceName") as! String)
            }
            
        } catch {
            print("Failed")
        }
    }
}

