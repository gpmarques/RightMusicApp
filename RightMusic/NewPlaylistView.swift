//
//  NewPlaylistView.swift
//  RightMusic
//
//  Created by Karina F Tronkos on 3/31/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import UIKit

class NewPlaylistsView: UIView {
    
    
    var playlistNavigationBar: UINavigationBar!
    var navItem: UINavigationItem!
    
    init (view: UIView, parent: NewPlaylistViewController) {
        super.init(frame: view.frame)
        
        view.backgroundColor = UIColor.whiteColor()
        
        navItem = UINavigationItem()
        playlistNavigationBar = UINavigationBar(frame: CGRectMake(0, 18, view.frame.width, 40))
        navItem.title = parent.navItemTitle
        
        playlistNavigationBar.items = [navItem]
        playlistNavigationBar.translucent = false
        playlistNavigationBar.barTintColor = tabAndNavigationBlue
        
        
        view.addSubview(playlistNavigationBar)
        
    }
    
    
    func addNewPlaylist() {
        
        let playController = PlaylistViewController()
        
        let playTbl = playController.tableViewPlaylist
        
        playTbl.beginUpdates()
        playTbl.insertRowsAtIndexPaths([NSIndexPath(forRow: playController.items.count-1, inSection: 0)], withRowAnimation: .Automatic)
        playTbl.endUpdates()
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}

