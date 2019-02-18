//
//  LoginVC.swift
//  Smack
//
//  Created by Gökhan Kılıç on 14.02.2019.
//  Copyright © 2019 Gökhan Kılıç. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.isNavigationBarHidden = true

        // Do any additional setup after loading the view.
    }
    
    @IBAction func createAccountBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
    
    @IBAction func closePressed(_ sender: Any) {
        print("pressed")
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func loginPressed(_ sender: Any) {
        
        print("username : \(usernameTxt.text!) | password: \(passwordTxt.text!)")
        AuthService.instance.loginUser(email: usernameTxt.text!, password: passwordTxt.text!, completion: { (success) in
                
                if success {
                    print("logged in user!", AuthService.instance.token)
                }
            })
        
    }
    
}
