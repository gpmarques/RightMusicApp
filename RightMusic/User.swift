//
//  Usuario.swift
//  RightMusic
//
//  Created by Gabriel Bendia on 3/23/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import Foundation


class User {
    
    var name: String
    var nickname: String
    var email: String
    var password: String
    var profilePicture: String?
    var playlist: [Playlist] = [Playlist(title: "Favorites")]
    
    init (name: String, nickname: String, email: String, password: String) {
        
        self.name = name
        self.nickname = nickname
        self.email = email
        self.password = password
        
    }
    
    func addNewPlaylist (playlistTitle: String) -> Bool {
        
        if playlist.indexOf({$0.title == playlistTitle}) == nil {
            
            let newPlaylist = Playlist(title: playlistTitle)
            playlist.append(newPlaylist)
            return true
            
        }
        
        return false
        
    }
    
    func removePlaylist (selectedPlaylist: String) {
        
        if let index = playlist.indexOf({$0.title == selectedPlaylist}) {
            
            playlist.removeAtIndex(index)
            
        }
        
    }
    
    func addMusicToPlaylist (selectedPlaylist: String, selectedMusic: String) {
        
        // adicionar musicas do banco de dados para a playlist. sem o banco de dados, utilizar variaveis globais
        
    }
    
    func removeMusicFromPlaylist (selectedPlaylist: String, selectedMusic: String) {
        
        // remover musicas da playlist
        
    }
    
}