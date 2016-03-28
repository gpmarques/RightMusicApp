//
//  LoginView.swift
//  RightMusic
//
//  Created by Guilherme Marques on 3/28/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import UIKit

class LoginView: UIView {
    
    var loginButton: UIButton!, signUpButton: UIButton!
    
    var usernameTextField: UITextField!, passwordTextField: UITextField!
    
    init(view: UIView, parent: UIViewController) {
        super.init(frame: view.frame)
        
        // MARK: Background
        
        view.backgroundColor = UIColor.whiteColor()
        let backgroundImage = UIImageView(frame: UIScreen.mainScreen().bounds)
        //        backgroundImage.image = UIImage(named: "backgroundImage")
        
        // MARK: Login Button
        
        let cGRectLoginButton: CGRect! = CGRectMake(view.frame.width*0.3125, view.frame.height*0.704225, view.frame.width*0.3125, view.frame.width*0.3125)
        
        loginButton = UIButton(type: .System)
        loginButton.setTitle("Login", forState: .Normal)
        loginButton.frame = cGRectLoginButton
        
        // MARK: Sign Up Button
        
        let cGRectSignUpButton: CGRect! = CGRectMake(view.frame.width*0.3125, view.frame.height*0.880282, view.frame.width*0.3125, view.frame.width*0.3125)
        
        signUpButton = UIButton(type: .System)
        signUpButton.setTitle("Sign Up", forState: .Normal)
        signUpButton.frame = cGRectSignUpButton
        
        // MARK: Username Text Field
        
        // Configuração do Text Field de nome de usuário
        
        // Configurar e copiar para o Text Field da senha (só mudar o placeholder)
        
        let cgRectUserName: CGRect! = CGRectMake(view.frame.width*0.0625, view.frame.height*0.176056, view.frame.width*0.9375, view.frame.width*0.9375)
        
        usernameTextField = UITextField(frame: cgRectUserName)
        usernameTextField.placeholder = "Username"
        usernameTextField.font = UIFont.systemFontOfSize(15)
        usernameTextField.clearButtonMode = UITextFieldViewMode.WhileEditing
        usernameTextField.borderStyle = UITextBorderStyle.RoundedRect
        
        // Descomentar abaixo quando tiver a imagem do Text Field e configurar corretamente a imagem
        
        // Adicionando imagem dentro do Text Field do nome de usuário
        
        //        let usernameIconView = UIImageView()
        //        usernameIconView.image = UIImage(named: "usernameIcon")
        //        let leftView = UIView()
        //        leftView.addSubview(usernameIconView)
        //        leftView.frame = CGRectMake(0, 0, 30, 50)
        //        usernameIconView.frame = CGRectMake(0, 0, 20, 20)
        //        usernameTextField.leftView = leftView
        //        usernameTextField.leftView = usernameIconView
        //        usernameTextField.leftViewMode = UITextFieldViewMode.Always
        
        // MARK: Password Text Field
        
        // Configuração do Text Field da senha
        
        let cgRectPassword: CGRect! = CGRectMake(view.frame.width*0.0625, view.frame.height*0.352113, view.frame.width*0.9375, view.frame.width*0.9375)
        
        
        passwordTextField = UITextField(frame: cgRectPassword)
        passwordTextField.placeholder = "Password"
        passwordTextField.font = UIFont.systemFontOfSize(15)
        passwordTextField.clearButtonMode = UITextFieldViewMode.WhileEditing
        passwordTextField.borderStyle = UITextBorderStyle.RoundedRect
        passwordTextField.secureTextEntry = true
        
        // Descomentar abaixo quando tiver a imagem do Text Field e configurar corretamente a imagem
        
        // Adicionando imagem dentro do Text Field da senha
        
        //        let passwordIconView = UIImageView()
        //        passwordIconView.image = UIImage(named: "passwordIcon")
        //        let passwordLeftView = UIView()
        //        passwordLeftView.addSubview(passwordIconView)
        //        passwordLeftView.frame = CGRectMake(0, 0, 30, 50)
        //        passwordIconView.frame = CGRectMake(0, 0, 20, 20)
        //        passwordTextField.leftView = passwordLeftView
        //        passwordTextField.leftView = passwordIconView
        //        passwordTextField.leftViewMode = UITextFieldViewMode.Always
        
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
