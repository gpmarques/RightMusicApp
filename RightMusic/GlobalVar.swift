//
//  GlobalVar.swift
//  RightMusic
//
//  Created by Gabriel Bendia on 3/30/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

// ARGH
import Foundation

public var userList: [User] = [User(name: "Gabriel Bendia", username: "gbendia", email: "gabrielbendia@hotmail.com", password: "123", userIdentifier: 0), User(name: "Karina Tronkos", username: "kft", email: "karina.tronkos@gmail.com", password: "123", userIdentifier: 1)]

public let chordsWithLyrics = ChordsWithLyrics(lyrics: "", chords: "", currentTone: Tone.A, originalTone: Tone.A)

let nickelback = Artist(name: "Nickelback", image: "nickelback")
let metallica = Artist(name: "Metallica", image: "metallica")
let adelle = Artist(name: "Adelle", image: "adele")

public var artistList: [Artist] = [nickelback, metallica]

public var musicList: [Music] = [Music(title: "Someday", genre: "Rock", artist: nickelback, chords: chordsWithLyrics), Music(title: "Nothing Else Matters", genre: "Rock", artist: metallica, chords: chordsWithLyrics), Music(title: "Hello", genre: "Pop", artist: adelle, chords: chordsWithLyrics)]

public var playLists: [Playlist] = [Playlist(title: "New Playlist",userIdentifier: 999999)]

var loggedUser: Int!

