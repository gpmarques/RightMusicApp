//
//  SearchMusicView.swift
//  RightMusic
//
//  Created by Karina F Tronkos on 4/1/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//
import UIKit

class SearchMusicView: UIView {
    
    
    var musicNavigationBar: UINavigationBar!
    var navItem: UINavigationItem!
    
    init (view: UIView, parent: SearchMusicViewController) {
        super.init(frame: view.frame)
        
        view.backgroundColor = UIColor.whiteColor()
        
        navItem = UINavigationItem()
        musicNavigationBar = UINavigationBar(frame: CGRectMake(0, 18, view.frame.width, 40))
        navItem.title = parent.navItemTitle
        
        musicNavigationBar.items = [navItem]
        musicNavigationBar.translucent = false
        musicNavigationBar.barTintColor = tabAndNavigationBlue
        
        
        view.addSubview(musicNavigationBar)
        
    }
    
    
    func addNewMusic() {
        
        let playController = SearchMusicViewController()
        
        let playTbl = playController.tableViewMusic
        
        playTbl.beginUpdates()
        playTbl.insertRowsAtIndexPaths([NSIndexPath(forRow: playController.items.count-1, inSection: 0)], withRowAnimation: .Automatic)
        playTbl.endUpdates()
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}
    
    

