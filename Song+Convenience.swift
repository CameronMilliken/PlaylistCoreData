//
//  Song+Convenience.swift
//  PlaylistCoreData
//
//  Created by Cameron Milliken on 12/12/18.
//  Copyright © 2018 Karl Pfister. All rights reserved.
//

import Foundation
import CoreData

extension Song {
    
    @discardableResult // Cause Karl said to.
    convenience init(playlist: Playlist, artist: String, title: String, moc: NSManagedObjectContext = CoreDataStack.context){
        self.init(context: moc)
        self.playlist = playlist
        self.artist = artist
        self.title = title
    }
}
