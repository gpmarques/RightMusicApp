//
//  Playlist.swift
//  RightMusic
//
//  Created by Gabriel Bendia on 3/23/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import Foundation


class Playlist {
    
    var title: String
    var music: [Music]?
    
    init (title: String) {
        
        self.title = title
        
    }
    
}