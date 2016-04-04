//
//  Musica.swift
//  RightMusic
//
//  Created by Gabriel Bendia on 3/23/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import Foundation


class Music {

    var title: String
    var genre: String
    var artist: Artist
    var chords: ChordsWithLyrics
    
    init (title: String, genre: String, artist: Artist, chords: ChordsWithLyrics) {
        
        self.title = title
        self.genre = genre
        self.artist = artist
        self.chords = chords
        
    }
    
}