//
//  Playlist+Convenience.swift
//  PlaylistNSUserDefaults
//
//  Created by Xavier on 9/5/18.
//  Copyright © 2018 DevMountain. All rights reserved.
//

import Foundation
import CoreData

extension Playlist {
    
    @discardableResult
    convenience init(name: String) {
        self.init(context: CoreDataStack.context)
        self.name = name
    }
}

