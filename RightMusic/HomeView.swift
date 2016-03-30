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

    
    init (view: UIView, parent: UIViewController) {
        super.init(frame: view.frame)
        
        view.backgroundColor = azulClaro
        
        // MARK: - NavigationItem
        
        navItem = UINavigationItem()
        navItem.title = "Sugestions"
        
        // MARK: - NavigationBar  
        
        let cGRectHomeNavBar: CGRect! = CGRectMake(view.frame.width*0.0, view.frame.height*0.0316901, view.frame.width*1.0, view.frame.height*0.125)
        
        homeNavigationBar = UINavigationBar(frame:cGRectHomeNavBar)
        homeNavigationBar.items = [navItem]
        homeNavigationBar.translucent = false
        homeNavigationBar.barTintColor = azulTabeNavigation
        
        view.addSubview(homeNavigationBar)
        

        
    }
    
    required init(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }
    
}
