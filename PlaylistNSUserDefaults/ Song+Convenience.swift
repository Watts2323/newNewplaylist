//
//   Song+Convenience.swift
//  PlaylistNSUserDefaults
//
//  Created by Xavier on 9/5/18.
//  Copyright © 2018 DevMountain. All rights reserved.
//

import Foundation
import CoreData



extension Song {
    
    convenience init(artist: String, title: String){
        self.init(context: CoreDataStack.context)
        self.artist = artist
        self.title = title
    }
}









