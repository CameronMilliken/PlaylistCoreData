//
//  Playlist+Convenience.swift
//  PlaylistCoreData
//
//  Created by Cameron Milliken on 12/12/18.
//  Copyright © 2018 Karl Pfister. All rights reserved.
//

import Foundation
import CoreData

extension Playlist {
    
    @discardableResult // Basically means we may not use this init. Almost always needed when using core data and a convenience init.
    convenience init(name: String, songs: [Song] = [], moc: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: moc)
        self.name = name
    }
}
