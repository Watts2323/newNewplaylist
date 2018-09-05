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
    @discardableResult
    convenience init(artist: String, title: String, playlist: Playlist){
        self.init(context: CoreDataStack.context)
        self.artist = artist
        self.title = title
        self.playlist = playlist
    }
}









