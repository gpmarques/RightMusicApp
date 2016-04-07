//
//  HomeView.swift
//  RightMusic
//
//  Created by Guilherme Marques on 3/28/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import UIKit

class HomeView: UIView {

    var homeNavigationBar: UINavigationBar!
    var navItem: UINavigationItem!
    var navtitleLabel: UILabel!
    var separator: UIView!
    var musicalTasteLabel: UILabel!
    
    init (view: UIView, parent: UIViewController) {
        super.init(frame: view.frame)
        
        view.backgroundColor = lightBlue
        let statusBarHeight = UIApplication.sharedApplication().statusBarFrame.size.height
        
        // MARK: - titleLabel

        let cGRectTitleLabel: CGRect! = CGRectMake(view.frame.width*0.0, view.frame.height*0.0316901, view.frame.width*1.0, view.frame.height*0.125/2)
        
        navtitleLabel = UILabel(frame: cGRectTitleLabel)
        navtitleLabel.text = "Sugestions"
        navtitleLabel.textColor = UIColor.whiteColor()
        navtitleLabel.textAlignment = .Center
        
        // MARK: - NavigationItem
        
        navItem = UINavigationItem()
        navItem.titleView = navtitleLabel        
        
        // MARK: - NavigationBar  
        
        let cGRectHomeNavBar: CGRect! = CGRectMake(view.frame.width*0.0, view.frame.height*0.0, view.frame.width*1.0, view.frame.height*0.125/2 + statusBarHeight)
    
        homeNavigationBar = UINavigationBar(frame:cGRectHomeNavBar)
        homeNavigationBar.items = [navItem]
        homeNavigationBar.translucent = false
        homeNavigationBar.barTintColor = tabAndNavigationBlue
        navtitleLabel.center = CGPoint(x: homeNavigationBar.center.x, y: homeNavigationBar.center.y)
        
        // MARK: - Header Highlights
        
        let cGRectSeparator: CGRect! = CGRectMake(view.frame.width*0.0234375, view.frame.height*0.193662, view.frame.width*0.95625, 1)
        
        separator = UIView(frame: cGRectSeparator)
        separator.backgroundColor = tabAndNavigationBlue
        
        // MARK: Musical Taste label
        
        let cGRectMusicalTaste: CGRect! = CGRectMake(view.frame.width*0.028125, view.frame.height*0.140845, view.frame.width*0.375, view.frame.height*0.06875)
        
        musicalTasteLabel = UILabel(frame: cGRectMusicalTaste)
        musicalTasteLabel.text = "For you"
        musicalTasteLabel.textColor = tabAndNavigationBlue
        musicalTasteLabel.textAlignment = .Left
        
        view.addSubview(separator)
        view.addSubview(musicalTasteLabel)
        view.addSubview(homeNavigationBar)
        

        
    }
    
    required init(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }
    
}
