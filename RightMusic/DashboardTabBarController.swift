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
        let icon1 = UITabBarItem(title: "Home", image: UIImage(named: "homeTabBarIcon"), selectedImage: UIImage(named: "homeTabBarIcon"))
        let icon2 = UITabBarItem(title: "Playlist", image: UIImage(named: "playlistTabBarIcon"), selectedImage: UIImage(named: "playlistTabBarIcon"))
        item1.tabBarItem = icon1
        item2.tabBarItem = icon2

        let controllers = [item1, item2]  //array of the root view controllers displayed by the tab bar interface
        self.viewControllers = controllers
    }
    
    
    
    //Delegate methods
    func tabBarController(tabBarController: UITabBarController, shouldSelectViewController viewController: UIViewController) -> Bool {
        print("Should select viewController: \(viewController.title) ?")
        return true
    }
}