//
//  ViewController.swift
//  RightMusic
//
//  Created by Guilherme Marques on 3/21/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - View Controller Life Cicle -
    var loginView: LoginView!
    
    override func viewDidLoad() {   // Configurar todas as posições quando o protótipo estiver pronto
        super.viewDidLoad()
        
        loginView = LoginView(view: view, parent: self)
        
        loginView.loginButton.addTarget(self, action: #selector(self.verifyLogin),
                              forControlEvents: .TouchUpInside)
        loginView.signUpButton.addTarget(self, action: #selector(self.signUp),
                               forControlEvents: .TouchUpInside)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Functions -
    
    //MARK: Login Function
    
    func verifyLogin (sender: UIButton!) {
        
        
        
    }
    
    // MARK: Sing Up Function
    
    func signUp (sender: UIButton!) {
        
        self.presentViewController(SignUpViewController(), animated: true, completion: nil)
        
    }
    
}

