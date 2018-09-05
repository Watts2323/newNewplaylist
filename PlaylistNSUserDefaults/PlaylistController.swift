//
//  PlaylistController.swift
//  Playlist
//
//  Created by James Pacheco on 5/4/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation
import CoreData

class PlaylistController {
    fileprivate static let PlaylistsKey = "playlists"
    
    static let shared = PlaylistController()
    
    init() {
    }
    
	func add(playlistWithName name: String) {
        Playlist(name: name)
        saveToPersistentStore()
    }
    
    func delete(playlist: Playlist) {
        playlist.managedObjectContext?.delete(playlist)
        saveToPersistentStore()
    }
	
	// MARK: Persistence
	
    func saveToPersistentStore() {
        do{
            try CoreDataStack.context.save()
        }catch {
            print("There was an error in \(#function) : \(error) \(error.localizedDescription)")
    }
	
	// MARK: Properties 
	
    var playlists: [Playlist]{
        //i WANT ALL THE PLAYLIST BACK FROM THE HARDDRIVE
        let request: NSFetchRequest<Playlist> = Playlist.fetchRequest()
        do{
            try CoreDataStack.context.fetch(request)
        }catch {
            print("There was an error in \(#function) : \(error) \(error.localizedDescription)")
        }
        return []
        
    }
}
}
