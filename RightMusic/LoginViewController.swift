//
//  ViewController.swift
//  RightMusic
//
//  Created by Guilherme Marques on 3/21/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    var loginView: LoginView!
    
    // MARK: - View Controller Life Cicle -
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginView = LoginView(view: view, parent: self)
        loginView.missingFieldAlert.addAction(loginView.okAction)
        loginView.wrongUsernameOrPasswordAlert.addAction(loginView.okAction)
        loginView.loginButton.addTarget(self, action: #selector(verifyLogin),
                              forControlEvents: .TouchUpInside)
        loginView.signUpButton.addTarget(self, action: #selector(signUp),
                               forControlEvents: .TouchUpInside)
        loginView.forgotPasswordButton.addTarget(self, action: #selector(forgotPassword), forControlEvents: .TouchUpInside)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Functions -
    
    // MARK: Login Function
    
    func verifyLogin (sender: UIButton!) {
        
        let usernameIndex = userList.indexOf({$0.username == loginView.usernameTextField.text})
        
        if loginView.usernameTextField.text?.isEmpty == true || loginView.passwordTextField.text?.isEmpty == true {
            
            presentViewController(loginView.missingFieldAlert, animated: true, completion: nil)
            
        }
        else {
            
            if usernameIndex != nil && userList[usernameIndex!].password == loginView.passwordTextField.text {
                
                //presentViewController(HomeViewController(), animated: true, completion: nil)
                self.presentViewController(DashboardTabBarController(),animated: true, completion: nil)

            }
            else {
                
                presentViewController(loginView.wrongUsernameOrPasswordAlert, animated: true, completion: nil)
                
            }
        }
        
    }
    
    // MARK: Sing Up Function
    
    func signUp (sender: UIButton!) {
        
        self.presentViewController(SignUpViewController(), animated: true, completion: nil)
        //self.presentViewController(HomeViewController(), animated: true, completion: nil)
        //self.presentViewController(PlaylistViewController(), animated: true, completion: nil)
    
    }
    
    // MARK: Forgot Password Function
    
    func forgotPassword (sender: UIButton!) {
        self.presentViewController(ForgotPasswordViewController(), animated: true, completion: nil)
    }
    
    // MARK: keyboard dismiss
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

