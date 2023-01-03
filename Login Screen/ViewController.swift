//
//  ViewController.swift
//  Login Screen
//
//  Created by shoeb on 02/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    var mainView : UIView!
    var headerLBL : UILabel!
    var middleLBL : UILabel!
    var usernameTF : UITextField!
    var passwordTF : UITextField!
    var loginBTN : UIButton!
    var clearBTN : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginScreen()
    }
    
    func loginScreen(){
        mainView = UIView()
        mainView.translatesAutoresizingMaskIntoConstraints = false
        mainView.backgroundColor = UIColor.systemCyan
        view.addSubview(mainView)
        NSLayoutConstraint.activate([
            mainView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            mainView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            mainView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            mainView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -250)
            
        ])
        
        headerLBL = UILabel()
        headerLBL.translatesAutoresizingMaskIntoConstraints = false
        headerLBL.text = "Nimap Infotech"
        headerLBL.font = .boldSystemFont(ofSize: 30)
        headerLBL.textAlignment = .center
        headerLBL.textColor = .white
        mainView.addSubview(headerLBL)
        NSLayoutConstraint.activate([
            headerLBL.leadingAnchor.constraint(equalTo: mainView.leadingAnchor),
            headerLBL.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 20),
            headerLBL.trailingAnchor.constraint(equalTo: mainView.trailingAnchor)
        ])
        
        middleLBL = UILabel()
        middleLBL.translatesAutoresizingMaskIntoConstraints = false
        middleLBL.text = "Sign In"
        middleLBL.font = .systemFont(ofSize: 25)
        middleLBL.textAlignment = .center
        middleLBL.textColor = .white
        mainView.addSubview(middleLBL)
        NSLayoutConstraint.activate([
            middleLBL.leadingAnchor.constraint(equalTo: mainView.leadingAnchor),
            middleLBL.topAnchor.constraint(equalTo: headerLBL.bottomAnchor, constant: 10),
            middleLBL.trailingAnchor.constraint(equalTo: mainView.trailingAnchor)
        ])
        
        usernameTF = UITextField()
        usernameTF.translatesAutoresizingMaskIntoConstraints = false
        usernameTF.placeholder = "Username"
        usernameTF.backgroundColor = .white
        usernameTF.layer.borderWidth = 1.0
        mainView.addSubview(usernameTF)
        NSLayoutConstraint.activate([
            usernameTF.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 10),
            usernameTF.topAnchor.constraint(equalTo: middleLBL.bottomAnchor, constant: 10),
            usernameTF.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -10)
        ])
        
        passwordTF = UITextField()
        passwordTF.translatesAutoresizingMaskIntoConstraints = false
        passwordTF.placeholder = "Password"
        passwordTF.backgroundColor = .white
        passwordTF.layer.borderWidth = 1.0
        mainView.addSubview(passwordTF)
        NSLayoutConstraint.activate([
            passwordTF.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 10),
            passwordTF.topAnchor.constraint(equalTo: usernameTF.bottomAnchor, constant: 10),
            passwordTF.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -10)
        ])
        
        loginBTN = UIButton()
        loginBTN.translatesAutoresizingMaskIntoConstraints = false
        loginBTN.setTitle("Login", for: .normal)
        loginBTN.backgroundColor = .systemGreen
        loginBTN.layer.cornerRadius = 5
        loginBTN.addTarget(self, action: #selector(LoginFunc), for: .touchUpInside)
        mainView.addSubview(loginBTN)
        NSLayoutConstraint.activate([
            loginBTN.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 35),
            loginBTN.topAnchor.constraint(equalTo: passwordTF.bottomAnchor, constant: 30),
            loginBTN.heightAnchor.constraint(equalToConstant: 25),
            loginBTN.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.30)
            
        ])
        
        clearBTN = UIButton()
        clearBTN.translatesAutoresizingMaskIntoConstraints = false
        clearBTN.setTitle("Clear", for: .normal)
        clearBTN.backgroundColor = .systemRed
        clearBTN.layer.cornerRadius = 5
        clearBTN.addTarget(self, action: #selector(ClearFunc), for: .touchUpInside)
        mainView.addSubview(clearBTN)
        NSLayoutConstraint.activate([
            clearBTN.topAnchor.constraint(equalTo: passwordTF.bottomAnchor, constant: 30),
            clearBTN.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -35),
            clearBTN.heightAnchor.constraint(equalToConstant: 25),
            clearBTN.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.30)
        ])
    }
    
    @objc func LoginFunc(){
        print("Username : \(usernameTF.text!) Password : \(passwordTF.text!)")
    }
    
    @objc func ClearFunc(){
        //usernameTF.text == "" && passwordTF.text == ""
    }
    
}

