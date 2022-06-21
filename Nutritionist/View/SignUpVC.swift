//
//  SignUpVC.swift
//  Nutritionist
//
//  Created by 전혜성 on 2022/06/21.
//

import UIKit
import Firebase
import FirebaseAuth

class SignUpVC: UIViewController {

    // MARK: Outlets
    @IBOutlet weak var inputEmail: UITextField!
    @IBOutlet weak var inputPassword: UITextField!
    @IBOutlet weak var inputPasswordCheck: UITextField!
    @IBOutlet weak var inputName: UITextField!
    @IBOutlet weak var emailCheckLabel: UILabel!
    @IBOutlet weak var passwordCheckLabel: UILabel!
    @IBOutlet weak var passwordCheckLabel2: UILabel!
    
    let auth = FirebaseAuthModule()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func signUpBtn(_ sender: UIButton) {
        
        guard let email = inputEmail.text else { return }
        guard let password = inputPasswordCheck.text else { return }
        
        auth.signUp(email: email, password: password, vc: self)
        
    }
    
}
