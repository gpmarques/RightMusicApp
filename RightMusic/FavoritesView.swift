//
//  FavoritesView.swift
//  RightMusic
//
//  Created by Karina F Tronkos on 4/3/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import UIKit

class FavoritesView: UIView {
    
    var navtitleLabel: UILabel!
    var favoritesNavigationBar: UINavigationBar!
    var navItem: UINavigationItem!
    
    init (view: UIView, parent: UIViewController) {
        super.init(frame: view.frame)
        
        view.backgroundColor = UIColor.whiteColor()
        let statusBarHeight = UIApplication.sharedApplication().statusBarFrame.size.height
        
        
        // MARK: - titleLabel
        
        let cGRectTitleLabel: CGRect! = CGRectMake(view.frame.width*0.0, view.frame.height*0.0316901, view.frame.width*1.0, view.frame.height*0.125/2)
        
        navtitleLabel = UILabel(frame: cGRectTitleLabel)
        navtitleLabel.text = "Favorites"
        navtitleLabel.textColor = UIColor.whiteColor()
        navtitleLabel.textAlignment = .Center
        
        // MARK: - NavigationItem
        
        navItem = UINavigationItem()
        navItem.titleView = navtitleLabel
        
        
        // MARK: - NavigationBar
        
        let cGRectHomeNavBar: CGRect! = CGRectMake(view.frame.width*0.0, view.frame.height*0.0, view.frame.width*1.0, view.frame.height*0.125/2 + statusBarHeight)
        
        favoritesNavigationBar = UINavigationBar(frame:cGRectHomeNavBar)
        favoritesNavigationBar.items = [navItem]
        favoritesNavigationBar.translucent = false
        favoritesNavigationBar.barTintColor = tabAndNavigationBlue
        navtitleLabel.center = CGPoint(x: favoritesNavigationBar.center.x, y: favoritesNavigationBar.center.y)
        
        
        
        view.addSubview(favoritesNavigationBar)
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}