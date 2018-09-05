//
//  CoreDataStack.swift
//  PlaylistNSUserDefaults
//
//  Created by Xavier on 9/5/18.
//  Copyright © 2018 DevMountain. All rights reserved.
//

import Foundation
import CoreData


enum CoreDataStack {
    
    static let container: NSPersistentStore = {
        
        let container= NSPersistentContainer(name: "PlaylistNSUserDefaults")
        container.loadPersistentStores(completionHandler: <#T##(NSPersistentStoreDescription, Error?) -> Void#>)
    }()
}






