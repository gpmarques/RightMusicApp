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
        
        profileView.logoutButton.addTarget(self, action: #selector(logoutFunction), forControlEvents: .TouchUpInside)
        self.navigationController?.navigationBar.hidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Functions -
    
    func logoutFunction (sender: UIButton) {
        
        presentViewController(LoginViewController(), animated: true, completion: nil)
        
    }

}
