//
//  LoginViewController.swift
//  Instagram
//
//  Created by ر on 28/02/1442 AH.
//  Copyright © 1442 r. All rights reserved.
//

import UIKit
import SafariServices

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
        feild.layer.borderWidth = 1.0
        feild.layer.borderColor = UIColor.secondaryLabel.cgColor
       return feild
    }()
    
    private let PasswordTextfeild:UITextField = {
        let feild = UITextField()
        feild.placeholder = "password ..."
        feild.returnKeyType = .continue
        feild.leftViewMode = .always
        feild.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        feild.autocapitalizationType = .none
        feild.autocapitalizationType = .none
        feild.layer.masksToBounds = true
        feild.layer.cornerRadius = Constant.cornerradius
        feild.isSecureTextEntry = true
        feild.backgroundColor = .secondarySystemBackground
        feild.layer.borderWidth = 1.0
        feild.layer.borderColor = UIColor.secondaryLabel.cgColor
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
        let btn =  UIButton()
         btn.setTitle("Terms of service", for: .normal)
         btn.setTitleColor(.secondaryLabel, for: .normal)
         return btn
    }()
    
    private let Policybutton:UIButton = {
        let btn =  UIButton()
         btn.setTitle("Privacy Policy", for: .normal)
         btn.setTitleColor(.secondaryLabel, for: .normal)
         return btn
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        LoginButton.addTarget(self,
                              action: #selector(didtaploginbutton),
                              for: .touchUpInside)
        
        Createaccount.addTarget(self,
                              action: #selector(didtapcreatebutton),
                              for: .touchUpInside)
        
        TermButton.addTarget(self,
                              action: #selector(didtaptermbutton),
                              for: .touchUpInside)
        
        Policybutton.addTarget(self,
                              action: #selector(didtapprivecybutton),
                              for: .touchUpInside)
        
        
        UsernameEmailTextfeild.delegate = self
        PasswordTextfeild.delegate = self
        

        addsubview()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        
        
        headerView.frame = CGRect(x: 0,
                                  y: 0.0,
                                  width: view.width,
                                  height: view.height / 3.0)
        
        UsernameEmailTextfeild.frame = CGRect(x: 25,
                                  y: headerView.bottom + 10,
                                  width: view.width - 50,
                                  height: 52.0)
        
        PasswordTextfeild.frame = CGRect(x: 25,
                                  y: UsernameEmailTextfeild.bottom + 10,
                                  width: view.width - 50,
                                  height: 52.0)
        
        LoginButton.frame = CGRect(x: 25,
                                  y: PasswordTextfeild.bottom + 10,
                                  width: view.width - 50,
                                  height: 52.0)
        
        Createaccount.frame = CGRect(x:25,
                                  y: LoginButton.bottom + 10,
                                  width: view.width - 50,
                                  height: 52.0)
        
        TermButton.frame = CGRect(x:10,
                                  y: view.height - view.safeAreaInsets.bottom - 100,
                                  width: view.width - 20,
                                  height: 52.0)
        
        Policybutton.frame = CGRect(x:10,
                                    y:view.height - view.safeAreaInsets.bottom - 50,
                                  width: view.width - 20,
                                  height: 52.0)
        
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
        
        let bg = UIImageView(image: UIImage(named:"titl"))
        headerView.addSubview(bg)
        bg.contentMode = .scaleAspectFit
        bg.frame = CGRect(x: headerView.width / 4.0,
                          y: view.safeAreaInsets.top,
                          width: headerView.width / 2.0,
                          height: headerView.height - view.safeAreaInsets.top)
        
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
        guard let username = UsernameEmailTextfeild.text ,  !username.isEmpty,
            let pass = PasswordTextfeild.text ,!pass.isEmpty,pass.count >= 8 else {
                return
        }
        
    }
    
    @objc private func didtaptermbutton(){
        guard let url = URL(string: "https://help.instagram.com/581066165581870?ref=dp") else {
            return
        }
        
        let vc = SFSafariViewController(url: url)
        present(vc,animated:true)
    }
    
    @objc private func didtapprivecybutton(){
        guard let url = URL(string: "https://help.instagram.com/519522125107875") else {
            return
        }
        
        let vc = SFSafariViewController(url: url)
        present(vc,animated:true)
    }
    
    @objc private func didtapcreatebutton(){
        let vc = RegisterViewController()
        present(vc,animated:true)
    }
    


}


extension LoginViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField ==  UsernameEmailTextfeild{
            PasswordTextfeild.becomeFirstResponder()
        }else if textField ==  PasswordTextfeild{
            didtaploginbutton()
        }
        return true
    }
}
