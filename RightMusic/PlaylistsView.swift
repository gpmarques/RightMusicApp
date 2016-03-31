//
//  PlaylistsView.swift
//  RightMusic
//
//  Created by Karina F Tronkos on 3/29/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import UIKit

class PlaylistsView: UIView {
    
    
    var playlistNavigationBar: UINavigationBar!
    var addButton: UIBarButtonItem!
    var navItem: UINavigationItem!
    
    init (view: UIView, parent: UIViewController) {
        super.init(frame: view.frame)
        
        view.backgroundColor = UIColor.whiteColor()
        
        navItem = UINavigationItem()
        navItem.rightBarButtonItem = addButton
        addButton = UIBarButtonItem(title: "Add", style: UIBarButtonItemStyle.Plain, target: self, action: #selector(PlaylistsView.addNewPlaylist))
        playlistNavigationBar = UINavigationBar(frame: CGRectMake(0, 18, view.frame.width, 40))
        navItem.title = "Playlists"
        //navItem.backBarButtonItem?.tintColor = UIColor.whiteColor()
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
