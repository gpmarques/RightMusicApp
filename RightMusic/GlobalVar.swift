//
//  GlobalVar.swift
//  RightMusic
//
//  Created by Gabriel Bendia on 3/30/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

// ARGH
import Foundation

public var userList: [User] = [User(name: "Gabriel Bendia", username: "gbendia", email: "gabrielbendia@gmail.com", password: "123", userIdentifier: 0), User(name: "Karina Tronkos", username: "kft", email: "karina.tronkos@gmail.com", password: "123", userIdentifier: 1)]
let nickelback = Artist(name: "Nickelback", image: "nickelback")
let chordsWithLyrics = ChordsWithLyrics(lyrics: "", chords: "", currentTone: Tone.A, originalTone: Tone.A)

let metallica = Artist(name: "Metallica", image: "metallica")

var musicList: [Music] = [Music(title: "Someday", genre: "Rock", artist: nickelback, chords: chordsWithLyrics), Music(title: "Nothing Else Matters", genre: "Rock", artist: metallica, chords: chordsWithLyrics)]

var playLists: [Playlist] = [Playlist(title: "New Playlist",userIdentifier: 999999)]

var loggedUser: Int!

