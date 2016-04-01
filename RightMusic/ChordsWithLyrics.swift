//
//  Cifra.swift
//  RightMusic
//
//  Created by Gabriel Bendia on 3/23/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import Foundation

// Enum for the possible music tones

enum Tone: String {
    
    case C = "C"
    case Csharp = "C#"
    case D = "D"
    case Dsharp = "D#"
    case E = "E"
    case F = "F"
    case Fsharp = "F#"
    case G = "G"
    case Gsharp = "G#"
    case A = "A"
    case Asharp = "A#"
    case B = "B"
    
    static let allTones: [Tone] = [.C, .Csharp, .D, .Dsharp, .E, .F, .Fsharp, .G, .Gsharp, .A, .Asharp, .B]
    
}


class ChordsWithLyrics {
    
    var lyrics: String
    var chords: String //[Chord]
    var currentTone: Tone
    var originalTone: Tone
    
    init (lyrics: String, chords: String /*[Chord]*/, currentTone: Tone, originalTone: Tone) {
        
        self.lyrics = lyrics
        self.chords = chords
        self.currentTone = currentTone
        self.originalTone = originalTone
        
    }
    
    // Change current tone to selected tone
    
    func modificaTom (selectedTone: Tone) {
        
        self.currentTone = selectedTone
        
    }
    
    // +1/2 tone
    
    func upTone () {
        
        if let index = Tone.allTones.indexOf(self.currentTone) {
            
            self.currentTone = Tone.allTones[(index+1)%12]
            
        }
        
    }
    
    // -1/2 tone
    
    func downTone () {
        
        if let index = Tone.allTones.indexOf(currentTone) {
            
            self.currentTone = Tone.allTones[(index-1)%12]
            
        }
        
    }
    
    // Goes back to original tone
    
    func backToOriginalTone () {
        
        self.currentTone = originalTone
        
    }
    
}