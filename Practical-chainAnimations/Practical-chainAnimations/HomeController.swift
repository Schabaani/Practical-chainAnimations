//
//  ViewController.swift
//  Practical-chainAnimations
//
//  Created by Amir Shabani (Twitter: @_Schabaani) on 10/5/17.
//  Copyright © 2017 Sete. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    override var prefersStatusBarHidden: Bool {
        return true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        setNeedsStatusBarAppearanceUpdate()
        setupViews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        UIView.animate(withDuration: 1, animations: { 
            self.backImage.alpha = 1
        }) { (true) in
            self.showMakeDateNow()
        }
    }
    
    //MARK:- back image
    lazy var backImage: UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "backHome")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.alpha = 0
        return image
    }()
    //MARK:- make date text
    lazy var makeDateText: UILabel = {
        let label = UILabel()
        label.text = "Make a date now"
        label.textColor = .red
        label.font = label.font.withSize(26)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.alpha = 0
        return label
    }()
    //MARK:- login
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.alpha = 0
        return button
    }()
    
    //MARK:- Sing up
    lazy var signUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign Up", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.alpha = 0
        return button
    }()
    
    
    private func setupViews() {
        view.addSubview(backImage)
        view.addSubview(makeDateText)
        view.addSubview(loginButton)
        view.addSubview(signUpButton)
        
        backImage.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        backImage.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        backImage.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backImage.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        makeDateText.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        makeDateText.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        makeDateText.widthAnchor.constraint(equalToConstant: 200).isActive = true
        makeDateText.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -50).isActive = true
        loginButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        loginButton.widthAnchor.constraint(equalToConstant: 60).isActive = true
        
        
        signUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 50).isActive = true
        signUpButton.bottomAnchor.constraint(equalTo: loginButton.bottomAnchor).isActive = true
        signUpButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
 
    }
    
    private func showMakeDateNow(){
        UIView.animate(withDuration: 1, animations: {
            self.makeDateText.alpha = 1
        }) { (true) in
            self.showButtons()
        }
    }
    
    private func showButtons(){
        UIView.animate(withDuration: 1) { 
            self.loginButton.alpha = 1
            self.signUpButton.alpha = 1
        }
    }

    
    


}

