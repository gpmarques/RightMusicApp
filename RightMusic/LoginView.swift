//
//  LoginView.swift
//  RightMusic
//
//  Created by Guilherme Marques on 3/28/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import UIKit

class LoginView: UIView {
    
    var loginButton: UIButton!
    var signUpButton: UIButton!
    var forgotPasswordButton: UIButton!
    var usernameTextField: UITextField!
    var passwordTextField: UITextField!
    var missingFieldAlert: UIAlertController!
    var wrongUsernameOrPasswordAlert: UIAlertController!
    var okAction: UIAlertAction!
    
    init(view: UIView, parent: UIViewController) {
        super.init(frame: view.frame)
        
        // MARK: Background
        
        let backgroundImage = UIImageView(frame: UIScreen.mainScreen().bounds)
        backgroundImage.image = UIImage(named: "backgroundImage")
        
        // MARK: Alerts
        
        missingFieldAlert = UIAlertController(title: "Blank field", message: "Please fill all text fields to login", preferredStyle: .Alert)
        wrongUsernameOrPasswordAlert = UIAlertController(title: "Wrong Username or Password", message: "Please verify your username and password nd try again", preferredStyle: .Alert)
        okAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
        
        // MARK: Login Button
        
        loginButton = UIButton(type: .System)
        loginButton.setTitle("Login", forState: .Normal)
        loginButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        loginButton.backgroundColor = confirmButtonBackgroundColor
        loginButton.frame = CGRectMake(view.frame.width*0.15, view.frame.height*0.621479, view.frame.width*0.703125, view.frame.width*0.13125)
        loginButton.titleLabel?.font = UIFont(name: (loginButton.titleLabel!.font?.fontName)!, size: view.frame.height*0.0244565)
        loginButton.layer.cornerRadius = 10
        
        // MARK: Sign Up Button
        
        signUpButton = UIButton(type: .System)
        signUpButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        signUpButton.setTitle("Create your account!", forState: .Normal)
        signUpButton.frame = CGRectMake(view.frame.width*0.53125, view.frame.height*0.708363, view.frame.width*0.40625, view.frame.width*0.13125)
        signUpButton.titleLabel?.font = UIFont(name: (signUpButton.titleLabel!.font?.fontName)!, size: view.frame.height*0.0194565)
        
        // MARK: Forgot your password Button
        
        forgotPasswordButton = UIButton(type: .System)
        forgotPasswordButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        forgotPasswordButton.setTitle("Forgot your passoword?", forState: .Normal)
        forgotPasswordButton.frame = CGRectMake(view.frame.width*0.0625, view.frame.height*0.708363, view.frame.width*0.446875, view.frame.width*0.13125)
        forgotPasswordButton.titleLabel?.font = UIFont(name: (forgotPasswordButton.titleLabel!.font?.fontName)!, size: view.frame.height*0.0194565)
        
        // MARK: Username Text Field
        
        usernameTextField = UITextField(frame: CGRectMake(view.frame.width*0.15, view.frame.height*0.332746, view.frame.width*0.703125, view.frame.width*0.13125))
        usernameTextField.placeholder = "Username"
        usernameTextField.textAlignment = NSTextAlignment.Center
        usernameTextField.backgroundColor = textFieldBackgroundColor
        usernameTextField.font = UIFont.systemFontOfSize(view.frame.height*0.0244565)
        usernameTextField.clearButtonMode = UITextFieldViewMode.WhileEditing
        usernameTextField.clearButtonMode = UITextFieldViewMode.WhileEditing
        usernameTextField.layer.cornerRadius = 10
        usernameTextField.clipsToBounds = true
        usernameTextField.layer.borderWidth = 1
        usernameTextField.layer.borderColor = textFieldBorderColor
        
        // Adicionando imagem dentro do Text Field do nome de usuário
        
        let usernameIconView = UIImageView()
        usernameIconView.image = UIImage(named: "usernameIcon")
        let usernameLeftView = UIView()
        usernameLeftView.addSubview(usernameIconView)
        usernameLeftView.frame = CGRectMake(0, 0, 30, view.frame.width*0.13125)
        usernameIconView.frame = CGRectMake(view.frame.width*0.053125, view.frame.height*0.0176056, view.frame.width*0.0625, view.frame.height*0.0352113)
        usernameTextField.leftView = usernameLeftView
        usernameTextField.leftViewMode = UITextFieldViewMode.Always
        
        // MARK: Password Text Field
        
        passwordTextField = UITextField(frame: CGRectMake(view.frame.width*0.15, view.frame.height*0.477113, view.frame.width*0.703125, view.frame.width*0.13125))
        passwordTextField.placeholder = "Password"
        passwordTextField.textAlignment = NSTextAlignment.Center
        passwordTextField.backgroundColor = textFieldBackgroundColor
        passwordTextField.font = UIFont.systemFontOfSize(view.frame.height*0.0244565)
        passwordTextField.clearButtonMode = UITextFieldViewMode.WhileEditing
        passwordTextField.layer.cornerRadius = 10
        passwordTextField.clipsToBounds = true
        passwordTextField.layer.borderWidth = 1
        passwordTextField.layer.borderColor = textFieldBorderColor
        passwordTextField.secureTextEntry = true
        
        // Adicionando imagem dentro do Text Field da senha
        
        let passwordIconView = UIImageView()
        passwordIconView.image = UIImage(named: "passwordIcon")
        let passwordLeftView = UIView()
        passwordLeftView.frame = CGRectMake(0, 0, 30, view.frame.width*0.13125)
        passwordIconView.frame = CGRectMake(view.frame.width*0.053125, view.frame.height*0.0140845, view.frame.width*0.059375, view.frame.height*0.0440141)
        passwordLeftView.addSubview(passwordIconView)
        passwordTextField.leftView = passwordLeftView
        passwordTextField.leftViewMode = UITextFieldViewMode.Always
        
        // MARK: - Add Subviews -
        
        view.addSubview(backgroundImage)
        view.addSubview(loginButton)
        view.addSubview(signUpButton)
        view.addSubview(forgotPasswordButton)
        view.addSubview(usernameTextField)
        view.addSubview(passwordTextField)
        
        
    }

    required init(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }


}
