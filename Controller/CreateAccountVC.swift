//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Gökhan Kılıç on 14.02.2019.
//  Copyright © 2019 Gökhan Kılıç. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    //Outlets
    @IBOutlet weak var usernameTxt: UIStackView!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    @IBOutlet weak var passwordTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    

    @IBAction func createAccountPressed(_ sender: Any) {
        
        guard let email = emailTxt.text, emailTxt.text != "" else {return}
        guard let password = passwordTxt.text , passwordTxt.text != "" else {return}
        
        AuthService.instance.registerUser(email: email, password: password) { (success) in
           
        }
    }
    
    
    @IBAction func pickAvatarPressed(_ sender: Any) {
    }
    
    @IBAction func generateBgColorPressed(_ sender: Any) {
    }
}
