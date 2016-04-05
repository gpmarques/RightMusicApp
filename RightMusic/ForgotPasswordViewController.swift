//
//  ForgotPasswordViewController.swift
//  RightMusic
//
//  Created by Gabriel Bendia on 3/30/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: UIViewController, UITextFieldDelegate {

    var forgotPasswordView: ForgotPasswordView!
    
    // MARK: - View Controller Life Cicle -
    
    override func viewDidLoad() {
        super.viewDidLoad()

        forgotPasswordView = ForgotPasswordView(view: view, parent: self)
        forgotPasswordView.sendButton.addTarget(self, action: #selector(sendEmail), forControlEvents: .TouchUpInside)
        forgotPasswordView.backToLoginButton.addTarget(self, action: #selector(backToLoginScreen), forControlEvents: .TouchUpInside)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Functions -
    
    // MARK: Send E-mail Function
    
    func sendEmail (sender: UIButton) {
        
       // Precisa de um servidor para fazer isso
        
    }
    
    // MARK: Back To Login Function
    
    func backToLoginScreen () {
        
        self.presentViewController(LoginViewController(), animated: true, completion: nil)
        
    }
    
    // MARK: Keyboard Dismiss
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

