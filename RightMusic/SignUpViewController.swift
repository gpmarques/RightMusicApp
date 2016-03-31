//
//  SignUpScreen.swift
//  RightMusic
//
//  Created by Gabriel Bendia on 3/25/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    // MARK: - Declarations -
    
    var signUpView: SignUpView!
    
    // MARK: - View Controller Life Cicle -
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        signUpView = SignUpView(view: view, parent: self)
        signUpView.missingFieldAlert.addAction(signUpView.okAction)
        signUpView.confirmPasswordAlert.addAction(signUpView.okAction)
        signUpView.existingUsernameAlert.addAction(signUpView.okAction)
        signUpView.existingEmailAlert.addAction(signUpView.okAction)
        signUpView.confirmButton.addTarget(self, action: #selector(confirmSignUp), forControlEvents: .TouchUpInside)
        signUpView.backToLoginScreenButton.addTarget(self, action: #selector(backToLoginScreen), forControlEvents: .TouchUpInside)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // MARK: - Functions -
    
    func confirmSignUp (sender: UIButton!) {
        
        if userList.contains({$0.username == signUpView.usernameTextField.text}) {
            
            presentViewController(signUpView.existingUsernameAlert, animated: true, completion: nil)
            
        }
        else {
            
            if userList.contains({$0.email == signUpView.emailTextField.text}) {
                
                presentViewController(signUpView.existingEmailAlert, animated: true, completion: nil)
                
            }
            else {
                
                if signUpView.nameTextField.text?.isEmpty == true || signUpView.usernameTextField.text?.isEmpty == true || signUpView.emailTextField.text?.isEmpty == true || signUpView.passwordTextField.text?.isEmpty == true || signUpView.passwordConfirmationTextField.text?.isEmpty ==  true {
                    
                    presentViewController(signUpView.missingFieldAlert, animated: true, completion: nil)
                    
                }
                else {
                    
                    if signUpView.passwordTextField.text != signUpView.passwordConfirmationTextField.text {
                        
                        presentViewController(signUpView.confirmPasswordAlert, animated: true, completion: nil)
                        
                    }
                    else {
                        
                        let newUser = User(name: signUpView.nameTextField.text!, username: signUpView.usernameTextField.text!, email: signUpView.emailTextField.text!, password: signUpView.passwordTextField.text!)
                        userList.append(newUser)
                        
                        let signUpSuccedded = UIAlertController(title: "Cadastro completo", message: "Você se cadastruo com sucesso. Pressione 'Confirmar' para continuar e fazer o seu login", preferredStyle: .Alert)
                        let confirmAction = UIAlertAction(title: "Confirmar", style: .Default, handler: { action in self.presentViewController(LoginViewController(), animated: true, completion: nil) } )
                        signUpSuccedded.addAction(confirmAction)
                        presentViewController(signUpSuccedded, animated: true, completion: nil)
                        
                    }
                }
            }
        }
        
    }
    
    func backToLoginScreen (sender: UIButton!) {
        
        self.presentViewController(LoginViewController(), animated: true, completion: nil)
        
    }
    
}
