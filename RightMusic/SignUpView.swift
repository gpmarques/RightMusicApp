//
//  SignUpView.swift
//  RightMusic
//
//  Created by Gabriel Bendia on 3/28/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import UIKit

class SignUpView: UIView {

    // MARK: - Declarations -

    var missingFieldAlert: UIAlertController!
    var confirmPasswordAlert: UIAlertController!
    var okAction: UIAlertAction!
    var signUpLabel: UILabel!
    var confirmButton: UIButton!
    var backToLoginScreenButton: UIButton!
    var nameTextField: UITextField!
    var usernameTextField: UITextField!
    var emailTextField: UITextField!
    var passwordTextField: UITextField!
    var passwordConfirmationTextField: UITextField!
    
    init (view: UIView, parent: UIViewController) {
        
        super.init(frame: view.frame)
        
        // MARK: - Initializations -
        
        // MARK: Background
        view.backgroundColor = UIColor.whiteColor()
        let backgroundImage = UIImageView(frame: UIScreen.mainScreen().bounds)
        //        backgroundImage.image = UIImage(named: "backgroundImage")
        
        missingFieldAlert = UIAlertController(title: "Erro", message: "Por favor preencha todos os campos para completar o cadastro", preferredStyle: .Alert)
        confirmPasswordAlert = UIAlertController(title: "Erro", message: "The password is not matching the password confirmation", preferredStyle: .Alert)
        okAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
        backToLoginScreenButton = UIButton(type: .System)
        nameTextField = UITextField(frame: CGRectMake(20, 30, 300, 50))
        usernameTextField = UITextField(frame: CGRectMake(20, 90, 300, 50))
        emailTextField = UITextField(frame: CGRectMake(20, 150, 300, 50))
        passwordTextField = UITextField(frame: CGRectMake(20, 210, 300, 50))
        passwordConfirmationTextField = UITextField(frame: CGRectMake(20, 270, 300, 50))
        
        // MARK: Sign Up Label
        
        signUpLabel = UILabel(frame: CGRectMake(0, 600, 300, 20))
        signUpLabel.text = "Sign Up"
        signUpLabel.textAlignment = NSTextAlignment.Center
        signUpLabel.textColor = UIColor.blackColor()
        
        // MARK: Confirm Button
        
        confirmButton = UIButton(type: .System)
        confirmButton.setTitle("Confirm", forState: .Normal)
        confirmButton.frame = CGRectMake(100, 400, 100, 50)
        
        // MARK: Back to Login Button
        
        backToLoginScreenButton.setTitle("Back", forState: .Normal)
        backToLoginScreenButton.frame = CGRectMake(100, 500, 100, 50)
        //        backToLoginScreenButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        
        // MARK: Name Text Field
        
        nameTextField.placeholder = "Name"
        nameTextField.font = UIFont.systemFontOfSize(15)
        nameTextField.clearButtonMode = UITextFieldViewMode.WhileEditing
        nameTextField.borderStyle = UITextBorderStyle.RoundedRect
        
        // MARK: Username Text Field
        
        usernameTextField.placeholder = "Username"
        usernameTextField.font = UIFont.systemFontOfSize(15)
        usernameTextField.clearButtonMode = UITextFieldViewMode.WhileEditing
        usernameTextField.borderStyle = UITextBorderStyle.RoundedRect
        
        // MARK: E-mail Text Field
        
        emailTextField.placeholder = "E-mail"
        emailTextField.font = UIFont.systemFontOfSize(15)
        emailTextField.clearButtonMode = UITextFieldViewMode.WhileEditing
        emailTextField.borderStyle = UITextBorderStyle.RoundedRect
        
        // MARK: Password Text Field
        
        passwordTextField.placeholder = "Password"
        passwordTextField.font = UIFont.systemFontOfSize(15)
        passwordTextField.clearButtonMode = UITextFieldViewMode.WhileEditing
        passwordTextField.borderStyle = UITextBorderStyle.RoundedRect
        passwordTextField.secureTextEntry = true
        
        // MARK: Password Confirmation Text Field
        
        passwordConfirmationTextField.placeholder = "Password Confirmation"
        passwordConfirmationTextField.font = UIFont.systemFontOfSize(15)
        passwordConfirmationTextField.clearButtonMode = UITextFieldViewMode.WhileEditing
        passwordConfirmationTextField.borderStyle = UITextBorderStyle.RoundedRect
        passwordConfirmationTextField.secureTextEntry = true
        
        // MARK: - Add Subviews -
        
        view.addSubview(backgroundImage)
        view.addSubview(signUpLabel)
        view.addSubview(confirmButton)
        view.addSubview(backToLoginScreenButton)
        view.addSubview(nameTextField)
        view.addSubview(usernameTextField)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(passwordConfirmationTextField)

    }
    
    required init(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }

}
