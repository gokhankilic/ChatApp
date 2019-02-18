//
//  Constants.swift
//  Smack
//
//  Created by Gökhan Kılıç on 14.02.2019.
//  Copyright © 2019 Gökhan Kılıç. All rights reserved.
//

import Foundation


typealias CompletionHandler = (_ Success:Bool) -> ()

 //Segues
let TO_LOGIN  = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

//user Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

//URL Constants
let BASE_URL = "http://localhost:3005/v1"
let URL_REGISTER = "\(BASE_URL)/account/register"
let URL_LOGIN = "http://localhost:3005/v1/account/login"
