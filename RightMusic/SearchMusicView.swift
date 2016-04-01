//
//  SearchMusicView.swift
//  RightMusic
//
//  Created by Karina F Tronkos on 4/1/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//
import UIKit

class SearchMusicView: UIView {
    
    var navtitleLabel: UILabel!
    var musicNavigationBar: UINavigationBar!
    var navItem: UINavigationItem!
    var searchBar: UISearchBar!
    
    init (view: UIView, parent: SearchMusicViewController) {
        super.init(frame: view.frame)
        
        view.backgroundColor = UIColor.whiteColor()
        let statusBarHeight = UIApplication.sharedApplication().statusBarFrame.size.height
        
        // MARK: - titleLabel
        
        let cGRectTitleLabel: CGRect! = CGRectMake(view.frame.width*0.0, view.frame.height*0.0316901, view.frame.width*1.0, view.frame.height*0.125/2)
        
        navtitleLabel = UILabel(frame: cGRectTitleLabel)
        navtitleLabel.text = "Pick the musics"
        navtitleLabel.textColor = UIColor.whiteColor()
        navtitleLabel.textAlignment = .Center
        
        // MARK: - NavigationItem e NavigationBar
        
        
        navItem = UINavigationItem()
        musicNavigationBar = UINavigationBar(frame: CGRectMake(view.frame.width*0.0, view.frame.height*0.0, view.frame.width*1.0, view.frame.height*0.125/2 + statusBarHeight))
        navItem.title = parent.navItemTitle
        
        musicNavigationBar.items = [navItem]
        musicNavigationBar.translucent = false
        musicNavigationBar.barTintColor = tabAndNavigationBlue
        
        // MARK: - SearchBar
        
        searchBar = UISearchBar(frame: CGRectMake(view.frame.width*0.0, view.frame.height*0.0, view.frame.width*1.0, view.frame.height*0.125/2 + statusBarHeight))
        searchBar.enablesReturnKeyAutomatically = true
        
        
        view.addSubview(musicNavigationBar)
        view.addSubview(searchBar)
        
    }
    
    
    func addNewMusic() {
        
        let playController = SearchMusicViewController()
        
        let playTbl = playController.tableViewMusic
        
        playTbl.beginUpdates()
        playTbl.insertRowsAtIndexPaths([NSIndexPath(forRow: playController.dataArray.count-1, inSection: 0)], withRowAnimation: .Automatic)
        playTbl.endUpdates()
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}
    
    

