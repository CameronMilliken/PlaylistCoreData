//
//  PlaylistController.swift
//  PlaylistCoreData
//
//  Created by Cameron Milliken on 12/12/18.
//  Copyright © 2018 Karl Pfister. All rights reserved.
//

import Foundation
import CoreData

class PlaylistController {
    
    // MARK: Singlton
    static let sharedInstance = PlaylistController() //Alawyas name this a sharedInstance
    
    // MARK: CRUD
    var playlist: [Playlist] {
        let fetchRequest: NSFetchRequest <Playlist> = Playlist.fetchRequest()
        return (try? CoreDataStack.context.fetch(fetchRequest)) ?? []
    }
    // Create
    func createPlaylist(playlistWithName name: String) {
        Playlist(name: name)
        // Save To Persistence
        saveToPersistentStore()
    }
    // Delete
    func deletePlaylist(playlistToDelete: Playlist) {
        CoreDataStack.context.delete(playlistToDelete) //Becky performs this. PSC
        saveToPersistentStore()
        
    }
    
    // Save
    func saveToPersistentStore() {
        //TODO: Finish
        do {
            try CoreDataStack.context.save()
        } catch {
            print("There was an error in \(#function) : \(error.localizedDescription)")
        
        }
    }
}
