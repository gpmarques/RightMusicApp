//
//  ProfileView.swift
//  RightMusic
//
//  Created by Gabriel Bendia on 4/4/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import UIKit

class ProfileView: UIView {
    
    var profileNavigationBar: UINavigationBar!
    var navItem: UINavigationItem!
    var navTitleLabel: UILabel!
    var profileBackgroundImage: UIImageView!
    var profilePicture: UIImageView!
    var nameLabel: UILabel!
    var emailLabel: UILabel!

    init(view: UIView, parent: ProfileViewController) {
        super.init(frame: view.frame)
        
        view.backgroundColor = lightBlue
        let statusBarHeight = UIApplication.sharedApplication().statusBarFrame.size.height
        
        // MARK: - titleLabel
        
        let cGRectTitleLabel: CGRect! = CGRectMake(view.frame.width*0.0, view.frame.height*0.0316901, view.frame.width*1.0, view.frame.height*0.125/2)
        
        navTitleLabel = UILabel(frame: cGRectTitleLabel)
        navTitleLabel.text = "Profile"
        navTitleLabel.textColor = UIColor.whiteColor()
        navTitleLabel.textAlignment = .Center
        
        // MARK: - NavigationItem
        
        navItem = UINavigationItem()
        navItem.titleView = navTitleLabel
        
        // MARK: - NavigationBar
        
        let cGRectProfileNavBar: CGRect! = CGRectMake(view.frame.width*0.0, view.frame.height*0.0, view.frame.width*1.0, view.frame.height*0.125/2 + statusBarHeight)
        
        profileNavigationBar = UINavigationBar(frame:cGRectProfileNavBar)
        profileNavigationBar.items = [navItem]
        profileNavigationBar.translucent = false
        profileNavigationBar.barTintColor = tabAndNavigationBlue
        navTitleLabel.center = CGPoint(x: profileNavigationBar.center.x, y: profileNavigationBar.center.y)
        
        // MARK: Profile Background Image
        
        profileBackgroundImage = UIImageView()
        profileBackgroundImage.image = UIImage(named: "profileBackgroundImage")
        profileBackgroundImage.frame = CGRectMake(view.frame.width*0.0, view.frame.height*0.125/2 + statusBarHeight, view.frame.width, view.frame.height*0.25)
        profileBackgroundImage.backgroundColor = UIColor.clearColor()
        
        // MARK: Add Subviews:
        
        view.addSubview(profileBackgroundImage)
        view.addSubview(profileNavigationBar)        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }

}
