//
//  ViewController.swift
//  RightMusic
//
//  Created by Guilherme Marques on 3/21/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import UIKit

class LoginScreen: UIViewController {
    
    // MARK: - View Controller Life Cicle -
    
    override func viewDidLoad() {   // Configurar todas as posições quando o protótipo estiver pronto
        
        super.viewDidLoad()
        
        // MARK: Background
        
        self.view.backgroundColor = UIColor.whiteColor()
        let backgroundImage = UIImageView(frame: UIScreen.mainScreen().bounds)
        //        backgroundImage.image = UIImage(named: "backgroundImage")
        
        self.view.addSubview(backgroundImage)
        
        // MARK: Login Button
        
        let loginButton = UIButton(type: .System)
        loginButton.setTitle("Login", forState: .Normal)
        loginButton.frame = CGRectMake(100, 400, 100, 50)
        loginButton.addTarget(self, action: #selector(self.verifyLogin),
                              forControlEvents: .TouchUpInside)
        self.view.addSubview(loginButton)
        
        // MARK: Sign Up Button
        
        let signUpButton = UIButton(type: .System)
        signUpButton.setTitle("Sign Up", forState: .Normal)
        signUpButton.frame = CGRectMake(100, 500, 100, 50)
        signUpButton.addTarget(self, action: #selector(self.signUp),
                               forControlEvents: .TouchUpInside)
        self.view.addSubview(signUpButton)
        
        // MARK: Username Text Field
        
        // Configuração do Text Field de nome de usuário
        
        // Configurar e copiar para o Text Field da senha (só mudar o placeholder)
        
        let usernameTextField = UITextField(frame: CGRectMake(20, 100, 300, 50))
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
        
        self.view.addSubview(usernameTextField)
        
        // MARK: Password Text Field
        
        // Configuração do Text Field da senha
        
        let passwordTextField = UITextField(frame: CGRectMake(20, 200, 300, 50))
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
        
        self.view.addSubview(passwordTextField)
        
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

