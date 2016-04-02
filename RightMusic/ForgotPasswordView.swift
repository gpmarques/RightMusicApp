//
//  ForgotPasswordView.swift
//  RightMusic
//
//  Created by Gabriel Bendia on 3/30/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import UIKit

class ForgotPasswordView: UIView {

    var forgotPasswordLabel: UILabel!
    var typeEmailLabel: UILabel!
    var emailTextField: UITextField!
    var sendButton: UIButton!
    var backToLoginButton: UIButton!
    
    init(view: UIView, parent: ForgotPasswordViewController) {
        super.init(frame: view.frame)
        
        // MARK: Background
        
        let backgroundImage = UIImageView(frame: UIScreen.mainScreen().bounds)
        backgroundImage.image = UIImage(named: "backgroundImage")
        
        // MARK: Forgot Password Label
        
        forgotPasswordLabel = UILabel(frame: CGRectMake(0, view.frame.height*0.096831, view.frame.width, view.frame.height*0.0440141))
        forgotPasswordLabel.text = "Forgot your password?"
        forgotPasswordLabel.textAlignment = NSTextAlignment.Center
        forgotPasswordLabel.textColor = UIColor.whiteColor()
        forgotPasswordLabel.font = UIFont(name: (forgotPasswordLabel.font?.fontName)!, size: view.frame.height*0.0352113)
        
        // MARK: Type your e-mail Label
        
        typeEmailLabel = UILabel(frame: CGRectMake(0, view.frame.height*0.22007, view.frame.width, view.frame.height*0.0840141))
        typeEmailLabel.text = "Type your e-mail and we'll send\nit to you:"
        typeEmailLabel.textAlignment = NSTextAlignment.Center
        typeEmailLabel.textColor = UIColor.whiteColor()
        typeEmailLabel.font = UIFont(name: (typeEmailLabel.font?.fontName)!, size: view.frame.height*0.0264085)
        typeEmailLabel.lineBreakMode = NSLineBreakMode.ByWordWrapping
        typeEmailLabel.numberOfLines = 2
        
        // MARK: E-mail Text Field
        
        emailTextField = UITextField(frame: CGRectMake(view.frame.width*0.14375, view.frame.height*0.387324, view.frame.width*0.703125, view.frame.width*0.13125))
        emailTextField.placeholder = "E-mail"
        emailTextField.textAlignment = NSTextAlignment.Center
        emailTextField.autocapitalizationType = .None
        emailTextField.autocorrectionType = .No
        emailTextField.backgroundColor = textFieldBackgroundColor
        emailTextField.font = UIFont.systemFontOfSize(view.frame.height*0.0244565)
        emailTextField.clearButtonMode = UITextFieldViewMode.WhileEditing
        emailTextField.layer.cornerRadius = 10
        emailTextField.clipsToBounds = true
        emailTextField.layer.borderWidth = 1
        emailTextField.layer.borderColor = textFieldBorderColor
        emailTextField.delegate = parent
        
        // MARK: Send Button
        
        sendButton = UIButton(type: .System)
        sendButton.setTitle("Send", forState: .Normal)
        sendButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        sendButton.backgroundColor = confirmButtonBackgroundColor
        sendButton.frame = CGRectMake(view.frame.width*0.14375, view.frame.height*0.554577,view.frame.width*0.703125, view.frame.width*0.13125)
        sendButton.titleLabel?.font = UIFont(name: (sendButton.titleLabel!.font?.fontName)!, size: view.frame.height*0.0244565)
        sendButton.layer.cornerRadius = 10
        
        // MARK: Back To Login Button
        
        backToLoginButton = UIButton(type: .System)
        backToLoginButton.setTitle("Login now!", forState: .Normal)
        backToLoginButton.frame = CGRectMake(view.frame.width*0.640625, view.frame.height*0.639014, view.frame.width*0.234375, view.frame.width*0.140625)
        backToLoginButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        backToLoginButton.titleLabel?.font = UIFont(name: (backToLoginButton.titleLabel!.font?.fontName)!, size: view.frame.height*0.0194565)
        
        // MARK: - Add Subviews -
     
        view.addSubview(backgroundImage)
        view.addSubview(forgotPasswordLabel)
        view.addSubview(typeEmailLabel)
        view.addSubview(emailTextField)
        view.addSubview(sendButton)
        view.addSubview(backToLoginButton)
        
    }

    required init(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }
    
}

