//
//  ProfileViewController.swift
//  RightMusic
//
//  Created by Gabriel Bendia on 4/4/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    var profileView: ProfileView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        profileView = ProfileView(view: view, parent: self)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
