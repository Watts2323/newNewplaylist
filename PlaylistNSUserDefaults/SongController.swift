//
//  SongController.swift
//  Playlist
//
//  Created by James Pacheco on 5/4/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class SongController {
    
	static func create(songWithName name: String, artist: String, playlist: Playlist) {
        Song(artist: artist, title: title, playlist: playlist)
        PlaylistController.shared.saveToPersistentStore()
	}
    
    static func delete(song: Song){
        song.managedObjectContext?.delete(song)
        PlaylistController.shared.saveToPersistentStore()
    }
}
