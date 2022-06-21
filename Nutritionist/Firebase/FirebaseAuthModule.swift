//
//  Firebase.swift
//  Nutritionist
//
//  Created by 전혜성 on 2022/06/21.
//

import Foundation
import FirebaseAuth

class FirebaseAuthModule {
    
    func signUp(email: String, password: String, vc: UIViewController) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            
            guard let result = result else {
                return print(error?.localizedDescription)
            }
            
            print("회원가입 성공: \(result.user.uid)")
            
            vc.dismiss(animated: true)
            

        }
    }
    
    func logIn(email: String, password: String, vc: UIViewController) {
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
            
            guard let self = self else { return }
            guard let authResult = authResult else { return print("에러: \(error?.localizedDescription)") }
            
            guard let vc2 = vc.storyboard?.instantiateViewController(withIdentifier: "HomeVC") as? HomeVC else { return }
            vc2.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            vc.present(vc2, animated: true)
        }
    }
}
