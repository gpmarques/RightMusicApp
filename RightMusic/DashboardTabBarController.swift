//
//  DashboardTabBarController.swift
//  RightMusic
//
//  Created by Karina F Tronkos on 3/30/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import UIKit

class DashboardTabBarController: UITabBarController, UITabBarControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }
    
    override func viewWillAppear(animated: Bool) {
        let item1 = HomeViewController()
        let item2 = PlaylistViewController()
        let item3 = FavoritesViewController()
        let icon1 = UITabBarItem(title: "Home", image: UIImage(named: "homeTabBarIcon"), selectedImage: UIImage(named: "homeTabBarIcon"))
        let icon2 = UITabBarItem(title: "Playlists", image: UIImage(named: "playlistTabBarIcon"), selectedImage: UIImage(named: "playlistTabBarIcon"))
        let icon3 = UITabBarItem(title: "Favorites", image: UIImage(named: "favoritesTabBarIcon"), selectedImage: UIImage(named: "favoritesTabBarIcon"))
        item1.tabBarItem = icon1
        item2.tabBarItem = icon2
        item3.tabBarItem = icon3

        let controllers = [item1, item2, item3]  //array of the root view controllers displayed by the tab bar interface
        self.viewControllers = controllers
    }
    
    
    
    //Delegate methods
    func tabBarController(tabBarController: UITabBarController, shouldSelectViewController viewController: UIViewController) -> Bool {
        print("Should select viewController: \(viewController.title) ?")
        return true
    }
}