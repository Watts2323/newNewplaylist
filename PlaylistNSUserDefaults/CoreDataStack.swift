//
//  CoreDataStack.swift
//  PlaylistNSUserDefaults
//
//  Created by Xavier on 9/5/18.
//  Copyright © 2018 DevMountain. All rights reserved.
//

import Foundation
import CoreData


enum CoreDataStack{
    
    
    static let container: NSPersistentContainer = {
        
        let container = NSPersistentContainer(name: "PlaylistNSUserDefaults")
        container.loadPersistentStores(completionHandler: { (_, error) in
            if let error = error{
                fatalError("Failed to Load Data from Persistent Store")
            }
        })
        return container
    }()
    
    static var context: NSManagedObjectContext {
        return container.viewContext
    }
}







