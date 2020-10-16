//
//  HomeViewController.swift
//  Instagram
//
//  Created by ر on 28/02/1442 AH.
//  Copyright © 1442 r. All rights reserved.
//

import UIKit
import FirebaseAuth

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
         handlenoauth()
    
    }
    
    private func handlenoauth(){
        
        if Auth.auth().currentUser == nil{
            let loginVC = LoginViewController()
//            loginVC.modalPresentationStyle = .fullScreen
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC,animated:false)
        }
    }

}
