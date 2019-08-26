//
//  DataController.swift
//  Mooskine
//
//  Created by Julio Rico on 8/26/19.
//  Copyright © 2019 Udacity. All rights reserved.
//
import CoreData
import Foundation


class DataController {
    let persistentContainer: NSPersistentContainer
    
    var viewContext: NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    init(nameModel: String) {
        persistentContainer = NSPersistentContainer(name: nameModel)
    }
    
    func load(completion: (() -> Void)? = nil) {
        persistentContainer.loadPersistentStores { (storeDescription, error) in
            guard error == nil else {
                fatalError(error!.localizedDescription)
            }
            completion?()
        }
    }
}
