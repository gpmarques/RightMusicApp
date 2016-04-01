//
//  PlaylistsView.swift
//  RightMusic
//
//  Created by Karina F Tronkos on 3/29/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import UIKit

class PlaylistsView: UIView {
    
    var navtitleLabel: UILabel!
    var playlistNavigationBar: UINavigationBar!
    var navItem: UINavigationItem!
    
    init (view: UIView, parent: UIViewController) {
        super.init(frame: view.frame)
        
        view.backgroundColor = UIColor.whiteColor()
        let statusBarHeight = UIApplication.sharedApplication().statusBarFrame.size.height
        
        
        // MARK: - titleLabel
        
        let cGRectTitleLabel: CGRect! = CGRectMake(view.frame.width*0.0, view.frame.height*0.0316901, view.frame.width*1.0, view.frame.height*0.125/2)
        
        navtitleLabel = UILabel(frame: cGRectTitleLabel)
        navtitleLabel.text = "Playlists"
        navtitleLabel.textColor = UIColor.whiteColor()
        navtitleLabel.textAlignment = .Center
        
        // MARK: - NavigationItem
        
        navItem = UINavigationItem()
        navItem.titleView = navtitleLabel
        
        
        // MARK: - NavigationBar
        
        let cGRectHomeNavBar: CGRect! = CGRectMake(view.frame.width*0.0, view.frame.height*0.0, view.frame.width*1.0, view.frame.height*0.125/2 + statusBarHeight)
        
        playlistNavigationBar = UINavigationBar(frame:cGRectHomeNavBar)
        playlistNavigationBar.items = [navItem]
        playlistNavigationBar.translucent = false
        playlistNavigationBar.barTintColor = tabAndNavigationBlue
        navtitleLabel.center = CGPoint(x: playlistNavigationBar.center.x, y: playlistNavigationBar.center.y)

        
        
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
