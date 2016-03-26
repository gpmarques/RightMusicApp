//
//  SignUpScreen.swift
//  RightMusic
//
//  Created by Gabriel Bendia on 3/25/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import UIKit

class SignUpScreen: UIViewController {

// MARK: - View Controller Life Cicle -
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // MARK: Background
        self.view.backgroundColor = UIColor.whiteColor()
        let backgroundImage = UIImageView(frame: UIScreen.mainScreen().bounds)
//        backgroundImage.image = UIImage(named: "backgroundImage")
        
        self.view.addSubview(backgroundImage)
        
        // MARK: Sign Up Label
        
        let signUpLabel = UILabel(frame: CGRectMake(0, 600, 300, 20))
        signUpLabel.text = "Sign Up"
        signUpLabel.textAlignment = NSTextAlignment.Center
        signUpLabel.textColor = UIColor.blackColor()
        
        self.view.addSubview(signUpLabel)
        
        // MARK: Confirm Button
        
        let confirmButton = UIButton(type: .System)
        confirmButton.setTitle("Confirm", forState: .Normal)
        confirmButton.frame = CGRectMake(100, 400, 100, 50)
        confirmButton.addTarget(self, action: #selector(self.confirmSignUp),
                               forControlEvents: .TouchUpInside)
        
        self.view.addSubview(confirmButton)
        
        // MARK: Back Button
        
        let backToLoginScreenButton = UIButton(type: .System)
        backToLoginScreenButton.setTitle("Back", forState: .Normal)
        backToLoginScreenButton.frame = CGRectMake(100, 500, 100, 50)
        backToLoginScreenButton.addTarget(self, action: #selector(self.backToLoginScreen),
                               forControlEvents: .TouchUpInside)
//        backToLoginScreenButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        
        self.view.addSubview(backToLoginScreenButton)
        
        // MARK: Name Text Field
        
        let nameTextField = UITextField(frame: CGRectMake(20, 30, 300, 50))
        nameTextField.placeholder = "Name"
        nameTextField.font = UIFont.systemFontOfSize(15)
        nameTextField.clearButtonMode = UITextFieldViewMode.WhileEditing
        nameTextField.borderStyle = UITextBorderStyle.RoundedRect
        
        self.view.addSubview(nameTextField)
        
        // MARK: Username Text Field
        
        let usernameTextField = UITextField(frame: CGRectMake(20, 90, 300, 50))
        usernameTextField.placeholder = "Username"
        usernameTextField.font = UIFont.systemFontOfSize(15)
        usernameTextField.clearButtonMode = UITextFieldViewMode.WhileEditing
        usernameTextField.borderStyle = UITextBorderStyle.RoundedRect
        
        self.view.addSubview(usernameTextField)
        
        // MARK: E-mail Text Field
        
        let emailTextField = UITextField(frame: CGRectMake(20, 150, 300, 50))
        emailTextField.placeholder = "E-mail"
        emailTextField.font = UIFont.systemFontOfSize(15)
        emailTextField.clearButtonMode = UITextFieldViewMode.WhileEditing
        emailTextField.borderStyle = UITextBorderStyle.RoundedRect
        
        self.view.addSubview(emailTextField)
        
        // MARK: Password Text Field
        
        let passwordTextField = UITextField(frame: CGRectMake(20, 210, 300, 50))
        passwordTextField.placeholder = "Password"
        passwordTextField.font = UIFont.systemFontOfSize(15)
        passwordTextField.clearButtonMode = UITextFieldViewMode.WhileEditing
        passwordTextField.borderStyle = UITextBorderStyle.RoundedRect
        
        self.view.addSubview(passwordTextField)
        
        // MARK: Password Confirmation Text Field
        
        let passwordConfirmationTextField = UITextField(frame: CGRectMake(20, 270, 300, 50))
        passwordConfirmationTextField.placeholder = "Password Confirmation"
        passwordConfirmationTextField.font = UIFont.systemFontOfSize(15)
        passwordConfirmationTextField.clearButtonMode = UITextFieldViewMode.WhileEditing
        passwordConfirmationTextField.borderStyle = UITextBorderStyle.RoundedRect
        
        self.view.addSubview(passwordConfirmationTextField)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
// MARK: - Functions -
    
    func confirmSignUp (sender: UIButton!) {
        
        
        
    }
    
    func backToLoginScreen (sender: UIButton!) {
        
        self.presentViewController(LoginScreen(), animated: true, completion: nil)
        
    }

}
