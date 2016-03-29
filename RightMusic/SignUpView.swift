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
        
        // MARK: Background
        
        let backgroundImage = UIImageView(frame: UIScreen.mainScreen().bounds)
        backgroundImage.image = UIImage(named: "backgroundImage")
        
        // MARK: Alerts
        
        missingFieldAlert = UIAlertController(title: "Erro", message: "Por favor preencha todos os campos para completar o cadastro", preferredStyle: .Alert)
        confirmPasswordAlert = UIAlertController(title: "Erro", message: "The password is not matching the password confirmation", preferredStyle: .Alert)
        okAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
        
        // MARK: Sign Up Label
        
        signUpLabel = UILabel(frame: CGRectMake(0, view.frame.height*0.0880282, view.frame.width, view.frame.height*0.0440141))
        signUpLabel.text = "Sign Up"
        signUpLabel.textAlignment = NSTextAlignment.Center
        signUpLabel.textColor = UIColor.whiteColor()
        signUpLabel.font = UIFont(name: (signUpLabel.font?.fontName)!, size: view.frame.height*0.0352113)
        
        // MARK: Confirm Button
        
        confirmButton = UIButton(type: .System)
        confirmButton.setTitle("Confirm", forState: .Normal)
        confirmButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        confirmButton.backgroundColor = confirmButtonBackgroundColor
        confirmButton.frame = CGRectMake(view.frame.width*0.14375, view.frame.height*0.757042, view.frame.width*0.703125, view.frame.width*0.13125)
        confirmButton.titleLabel?.font = UIFont(name: (confirmButton.titleLabel!.font?.fontName)!, size: view.frame.height*0.0244565)
        confirmButton.layer.cornerRadius = 10
        
        // MARK: Back to Login Button
        
        backToLoginScreenButton = UIButton(type: .System)
        backToLoginScreenButton.setTitle("Already have an account? Login now!", forState: .Normal)
        backToLoginScreenButton.frame = CGRectMake(view.frame.width*0.296875, view.frame.height*0.84507, view.frame.width*0.671875, view.frame.width*0.13125)
        backToLoginScreenButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        backToLoginScreenButton.titleLabel?.font = UIFont(name: (backToLoginScreenButton.titleLabel!.font?.fontName)!, size: view.frame.height*0.0194565)
        
        // MARK: Name Text Field
        
        nameTextField = UITextField(frame: CGRectMake(view.frame.width*0.14375, view.frame.height*0.184859, view.frame.width*0.703125, view.frame.width*0.13125))
        nameTextField.placeholder = "Name"
        nameTextField.textAlignment = NSTextAlignment.Center
        nameTextField.backgroundColor = textFieldsBackgroundColor
        nameTextField.font = UIFont.systemFontOfSize(view.frame.height*0.0244565)
        nameTextField.clearButtonMode = UITextFieldViewMode.WhileEditing
        nameTextField.clearButtonMode = UITextFieldViewMode.WhileEditing
        nameTextField.layer.cornerRadius = 10
        nameTextField.clipsToBounds = true
        nameTextField.layer.borderWidth = 1
        nameTextField.layer.borderColor = textFieldBorderColor
        
        // MARK: Username Text Field
        
        usernameTextField = UITextField(frame: CGRectMake(view.frame.width*0.14375, view.frame.height*0.299296, view.frame.width*0.703125, view.frame.width*0.13125))
        usernameTextField.placeholder = "Username"
        usernameTextField.textAlignment = NSTextAlignment.Center
        usernameTextField.backgroundColor = textFieldsBackgroundColor
        usernameTextField.font = UIFont.systemFontOfSize(view.frame.height*0.0244565)
        usernameTextField.clearButtonMode = UITextFieldViewMode.WhileEditing
        usernameTextField.clearButtonMode = UITextFieldViewMode.WhileEditing
        usernameTextField.layer.cornerRadius = 10
        usernameTextField.clipsToBounds = true
        usernameTextField.layer.borderWidth = 1
        usernameTextField.layer.borderColor = textFieldBorderColor
        
        // MARK: E-mail Text Field
        
        emailTextField = UITextField(frame: CGRectMake(view.frame.width*0.14375, view.frame.height*0.413732, view.frame.width*0.703125, view.frame.width*0.13125))
        emailTextField.placeholder = "E-mail"
        emailTextField.textAlignment = NSTextAlignment.Center
        emailTextField.backgroundColor = textFieldsBackgroundColor
        emailTextField.font = UIFont.systemFontOfSize(view.frame.height*0.0244565)
        emailTextField.clearButtonMode = UITextFieldViewMode.WhileEditing
        emailTextField.clearButtonMode = UITextFieldViewMode.WhileEditing
        emailTextField.layer.cornerRadius = 10
        emailTextField.clipsToBounds = true
        emailTextField.layer.borderWidth = 1
        emailTextField.layer.borderColor = textFieldBorderColor
        
        // MARK: Password Text Field
        
        passwordTextField = UITextField(frame: CGRectMake(view.frame.width*0.14375, view.frame.height*0.528169, view.frame.width*0.703125, view.frame.width*0.13125))
        passwordTextField.placeholder = "Password"
        passwordTextField.textAlignment = NSTextAlignment.Center
        passwordTextField.backgroundColor = textFieldsBackgroundColor
        passwordTextField.font = UIFont.systemFontOfSize(view.frame.height*0.0244565)
        passwordTextField.clearButtonMode = UITextFieldViewMode.WhileEditing
        passwordTextField.clearButtonMode = UITextFieldViewMode.WhileEditing
        passwordTextField.layer.cornerRadius = 10
        passwordTextField.clipsToBounds = true
        passwordTextField.layer.borderWidth = 1
        passwordTextField.layer.borderColor = textFieldBorderColor
        passwordTextField.secureTextEntry = true
        
        // MARK: Password Confirmation Text Field
        
        passwordConfirmationTextField = UITextField(frame: CGRectMake(view.frame.width*0.14375, view.frame.height*0.642606, view.frame.width*0.703125, view.frame.width*0.13125))
        passwordConfirmationTextField.placeholder = "Password Confirmation"
        passwordConfirmationTextField.textAlignment = NSTextAlignment.Center
        passwordConfirmationTextField.backgroundColor = textFieldsBackgroundColor
        passwordConfirmationTextField.font = UIFont.systemFontOfSize(view.frame.height*0.0244565)
        passwordConfirmationTextField.clearButtonMode = UITextFieldViewMode.WhileEditing
        passwordConfirmationTextField.clearButtonMode = UITextFieldViewMode.WhileEditing
        passwordConfirmationTextField.layer.cornerRadius = 10
        passwordConfirmationTextField.clipsToBounds = true
        passwordConfirmationTextField.layer.borderWidth = 1
        passwordConfirmationTextField.layer.borderColor = textFieldBorderColor
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
