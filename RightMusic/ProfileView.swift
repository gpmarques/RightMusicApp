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
    var contributeImage: UIImageView!
    var contributeButton: UIButton!
    var editProfileImage: UIImageView!
    var editProfileButton: UIButton!
    var logoutImage: UIImageView!
    var logoutButton: UIButton!

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
        
        // MARK: Profile Picture Background Image
        
        profileBackgroundImage = UIImageView()
        profileBackgroundImage.image = UIImage(named: "profileBackgroundImage")
        profileBackgroundImage.frame = CGRectMake(view.frame.width*0.0 - 1, view.frame.height*0.125/2, view.frame.width + 1, view.frame.height*0.704225/2)
        profileBackgroundImage.backgroundColor = UIColor.clearColor()
        
        // MARK: Profile Picture
        
        profilePicture = UIImageView()
        profilePicture.frame = CGRectMake(view.frame.width*0.109375/2, view.frame.height*0.0880282, view.frame.width*0.640625/2, view.frame.height*0.360915/2)
        profilePicture.layer.cornerRadius = profilePicture.frame.size.width/2
        profilePicture.clipsToBounds = true
        profilePicture.backgroundColor = UIColor.whiteColor()
        profilePicture.image = UIImage(named: "profilePicture")
        
        // MARK: Name Label
        
        nameLabel = UILabel(frame: CGRectMake(view.frame.width*0.859375/2, view.frame.height*0.167254, view.frame.width*1.54688, view.frame.height*0.0246479))
        nameLabel.text = userList[loggedUser].name
        nameLabel.textColor = UIColor.whiteColor()
        
        // MARK: E-mail Label
        
        emailLabel = UILabel(frame: CGRectMake(view.frame.width*0.859375/2, view.frame.height*0.193662, view.frame.width*1.54688, view.frame.height*0.0264085))
        emailLabel.text = userList[loggedUser].email
        emailLabel.font = UIFont(name: (emailLabel?.font?.fontName)!, size: view.frame.height*0.0211268)
        emailLabel.textColor = UIColor.whiteColor()
        
        // MARK: Contribute Image
        
        contributeImage = UIImageView(frame: CGRectMake(view.frame.width*0.15625/2, view.frame.height*0.440141, view.frame.width*0.1875/2.5, view.frame.width*0.1875/2.5))
        contributeImage.image = UIImage(named: "contributeWithChordsIcon")
        
        // MARK: Contribute Button
        
        contributeButton = UIButton(frame: CGRectMake(view.frame.width*0.195312, view.frame.height*0.440141 + view.frame.height*0.00880282, view.frame.width, view.frame.height*0.0211268))
        contributeButton.setTitle("Contribute with chords", forState: .Normal)
        contributeButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        contributeButton.contentHorizontalAlignment = .Left
        
        // MARK: Edit Profile Image
        
        editProfileImage = UIImageView(frame: CGRectMake(view.frame.width*0.15625/2, view.frame.height*0.554577, view.frame.width*0.1875/2.5, view.frame.width*0.1875/2.5))
        editProfileImage.image = UIImage(named: "editProfileIcon")
        
        // MARK: Edit Profile Button
        
        editProfileButton = UIButton(frame: CGRectMake(view.frame.width*0.195312, view.frame.height*0.554577 + view.frame.height*0.00880282, view.frame.width, view.frame.height*0.0211268))
        editProfileButton.setTitle("Edit profile", forState: .Normal)
        editProfileButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        editProfileButton.contentHorizontalAlignment = .Left
        
        // MARK: Logout Image
        
        logoutImage = UIImageView(frame: CGRectMake(view.frame.width*0.15625/2, view.frame.height*0.836268, view.frame.width*0.1875/2.5, view.frame.width*0.1875/2.5))
        logoutImage.image = UIImage(named: "logoutIcon")
        
        // MARK: Logout Button
        
        logoutButton = UIButton(frame: CGRectMake(view.frame.width*0.195312, view.frame.height*0.836268 + view.frame.height*0.00880282, view.frame.width, view.frame.height*0.0211268))
        logoutButton.setTitle("Logout", forState: .Normal)
        logoutButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        logoutButton.contentHorizontalAlignment = .Left
        
        // MARK: Add Subviews
        
        view.addSubview(profileBackgroundImage)
        view.addSubview(nameLabel)
        view.addSubview(emailLabel)
        view.addSubview(contributeImage)
        view.addSubview(contributeButton)
        view.addSubview(editProfileButton)
        view.addSubview(editProfileImage)
        view.addSubview(logoutImage)
        view.addSubview(logoutButton)
        self.profileBackgroundImage.addSubview(profilePicture)
        view.addSubview(profileNavigationBar)        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }

}
