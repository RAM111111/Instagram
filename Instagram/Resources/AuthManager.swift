//
//  AuthManager.swift
//  Instagram
//
//  Created by ر on 29/02/1442 AH.
//  Copyright © 1442 r. All rights reserved.
//

import FirebaseAuth

public class AuthManager{
    
    static let shared = AuthManager()
    
    
    public func RegisterNewUser(username:String,email:String,pass:String){
        
    }
    
    public func LoginUser(username:String?,email:String?,pass:String,completion:((Bool) -> Void)){
        if let email = email {
            Auth.auth().signIn(withEmail: email, password: pass) { (res, err) in
                guard res != nil , err == nil else {
                    completion(false)
                    return
                }
                completion(true)
            }
        }else if let username = username {
            print(username)
        }
        
    }
}
