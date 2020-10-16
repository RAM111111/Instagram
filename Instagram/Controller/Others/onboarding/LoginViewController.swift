//
//  LoginViewController.swift
//  Instagram
//
//  Created by ر on 28/02/1442 AH.
//  Copyright © 1442 r. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    struct Constant {
        static let cornerradius:CGFloat = 8.0
    }
    
    private let UsernameEmailTextfeild:UITextField = {
        let feild = UITextField()
        feild.placeholder = "user or email ..."
        feild.returnKeyType = .next
        feild.leftViewMode = .always
        feild.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        feild.autocapitalizationType = .none
        feild.autocapitalizationType = .none
        feild.layer.masksToBounds = true
        feild.layer.cornerRadius = Constant.cornerradius
        feild.backgroundColor = .secondarySystemBackground
       return feild
    }()
    
    private let PasswordTextfeild:UITextField = {
        let feild = UITextField()
        feild.placeholder = "password ..."
        feild.returnKeyType = .next
        feild.leftViewMode = .always
        feild.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        feild.autocapitalizationType = .none
        feild.autocapitalizationType = .none
        feild.layer.masksToBounds = true
        feild.layer.cornerRadius = Constant.cornerradius
        feild.isSecureTextEntry = true
        feild.backgroundColor = .secondarySystemBackground
       return feild
    }()
    
    private let LoginButton:UIButton = {
       let btn =  UIButton()
        btn.setTitle("LogIn", for: .normal)
        btn.layer.cornerRadius = Constant.cornerradius
        btn.backgroundColor = .systemBlue
        btn.setTitleColor(.white, for: .normal)
        return btn
    }()
    
    private let Createaccount:UIButton = {
        let btn =  UIButton()
         btn.setTitle("New user? Create a Nnew Account", for: .normal)
         btn.setTitleColor(.label, for: .normal)
         return btn
     }()
    
    private let headerView:UIView = {
       let header =  UIView()
        header.clipsToBounds = true
        header.backgroundColor = .red
        let bg = UIImageView(image:UIImage(named: "bg"))
        header.addSubview(bg)
        return header
    }()
    
    private let TermButton:UIButton = {

       return UIButton()
    }()
    
    private let Policybutton:UIButton = {

       return UIButton()
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        addsubview()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        
        
        headerView.frame = CGRect(x: 0,
                                  y: 0.0,
                                  width: view.width,
                                  height: view.height / 3.0)
        
        configureheaderview()
    }
    
    private func configureheaderview(){
        guard headerView.subviews.count == 1 else {
            return
        }
        guard let background = headerView.subviews.first  else {
            return
        }
        background.frame = headerView.bounds
    }
    
    private func addsubview(){
        view.addSubview(UsernameEmailTextfeild)
        view.addSubview(PasswordTextfeild)
        view.addSubview(LoginButton)
        view.addSubview(TermButton)
        view.addSubview(Policybutton)
        view.addSubview(headerView)
        view.addSubview(Createaccount)
        
    }
    
    @objc private func didtaploginbutton(){
        
    }
    
    @objc private func didtaptermbutton(){
        
    }
    
    @objc private func didtapprivecybutton(){
        
    }
    
    @objc private func didtapcreatebutton(){
        
    }
    


}
