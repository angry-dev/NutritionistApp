//
//  ViewController.swift
//  Nutritionist
//
//  Created by 전혜성 on 2022/06/21.
//

import UIKit

class SignInVC: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var inputEmail: UITextField!
    @IBOutlet weak var inputPassword: UITextField!
    
    let auth = FirebaseAuthModule()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func logInBtn(_ sender: UIButton) {
        
        guard let email = inputEmail.text else { return }
        guard let password = inputPassword.text else { return }
        
        auth.logIn(email: email, password: password, vc: self)
    }
    
}

