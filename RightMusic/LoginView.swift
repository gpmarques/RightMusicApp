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
    var usernameTextField: UITextField!
    var passwordTextField: UITextField!
    
    init(view: UIView, parent: UIViewController) {
        super.init(frame: view.frame)
        
        // MARK: Background
        
        let backgroundImage = UIImageView(frame: UIScreen.mainScreen().bounds)
        backgroundImage.image = UIImage(named: "backgroundImage")
        
        // MARK: Login Button
        
        loginButton = UIButton(type: .System)
        loginButton.setTitle("Login", forState: .Normal)
        loginButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        loginButton.backgroundColor = UIColor(colorLiteralRed: 1/255, green: 32/255, blue: 71/255, alpha: 1)
        loginButton.frame = CGRectMake(view.frame.width*0.15, view.frame.height*0.621479, view.frame.width*0.703125, view.frame.width*0.13125)
        loginButton.titleLabel?.font = UIFont(name: (loginButton.titleLabel!.font?.fontName)!, size: view.frame.height*0.0244565)
        loginButton.layer.cornerRadius = 10
        
        // MARK: Sign Up Button
        
        let cGRectSignUpButton: CGRect! = CGRectMake(view.frame.width*0.3125, view.frame.height*0.880282, view.frame.width*0.703125, view.frame.width*0.13125)
        
        signUpButton = UIButton(type: .System)
        signUpButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        signUpButton.setTitle("Create your account!", forState: .Normal)
        signUpButton.frame = cGRectSignUpButton
        
        // MARK: Username Text Field
        
        usernameTextField = UITextField(frame: CGRectMake(view.frame.width*0.15, view.frame.height*0.332746, view.frame.width*0.703125, view.frame.width*0.13125))
        usernameTextField.placeholder = "Username"
        usernameTextField.textAlignment = NSTextAlignment.Center
        usernameTextField.backgroundColor = UIColor(colorLiteralRed: 249/255, green: 249/255, blue: 249/255, alpha: 0.45)
        usernameTextField.font = UIFont.systemFontOfSize(view.frame.height*0.0244565)
        usernameTextField.clearButtonMode = UITextFieldViewMode.WhileEditing
        usernameTextField.clearButtonMode = UITextFieldViewMode.WhileEditing
        usernameTextField.layer.cornerRadius = 10
        usernameTextField.clipsToBounds = true
        usernameTextField.layer.borderWidth = 1
        usernameTextField.layer.borderColor = UIColor(colorLiteralRed: 151/255, green: 151/255, blue: 151/255, alpha: 1).CGColor
        
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
        passwordTextField.backgroundColor = UIColor(colorLiteralRed: 249/255, green: 249/255, blue: 249/255, alpha: 0.45)
        passwordTextField.font = UIFont.systemFontOfSize(view.frame.height*0.0244565)
        passwordTextField.clearButtonMode = UITextFieldViewMode.WhileEditing
        passwordTextField.layer.cornerRadius = 10
        passwordTextField.clipsToBounds = true
        passwordTextField.layer.borderWidth = 1
        passwordTextField.layer.borderColor = UIColor(colorLiteralRed: 151/255, green: 151/255, blue: 151/255, alpha: 1).CGColor
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
        view.addSubview(usernameTextField)
        view.addSubview(passwordTextField)
        
        
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}
