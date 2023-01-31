//
//  LoginScreenView.swift
//  TesteLogin
//
//  Created by unicred on 24/01/23.
//


import UIKit

class LoginScreen: UIView {
    
    
    lazy var background: UIView = {
        let background = UIView()
        
        return background
        
    }()
    
    lazy var logoLbl: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "eee")
        imageView.contentMode = .scaleAspectFit
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    lazy var txtFieldName: UITextField = {
        let textField = UITextField()
        textField.placeholder = "    E-mail"
        textField.layer.masksToBounds = true
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.layer.cornerRadius = 8
        textField.layer.borderWidth = 1
        textField.layer.backgroundColor = UIColor.white.cgColor
        textField.layer.borderColor = TINT_COLOR.cgColor
        return textField
    }()
    
    lazy var txtFieldPassword: UITextField = {
        let textField = UITextField()
        textField.placeholder = "    Password"
        textField.layer.masksToBounds = true
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always //essa linha e a de cima pro texto n ficar colado
        textField.layer.cornerRadius = 8
        textField.layer.borderWidth = 1
        textField.layer.backgroundColor = UIColor.white.cgColor
        textField.layer.borderColor = TINT_COLOR.cgColor
        return textField
    }()
    
    lazy var loginButton:UIButton = {
        let button = UIButton(configuration: .filled())
        button.setTitle("Login", for: .normal)
        return button
    }()
    
    
    lazy var registerButton: UIButton = {
        let button = UIButton(configuration: .filled())
        button.setTitle("Cadastre-se", for: .normal)
        return button
    }()
    
    lazy var forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.setTitle("Esqueci minha senha", for: .normal)
        button.backgroundColor = .tintColor
        button.titleLabel?.font = UIFont.systemFont(ofSize: 11)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 5
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("UAAAAbvbbbbbbbbbbbbbbbb")
    }
    
    func addSubviews() {
        
        addSubview(background)
        background.addSubview(txtFieldName)
        background.addSubview(txtFieldPassword)
        background.addSubview(forgotPasswordButton)
        background.addSubview(loginButton)
        background.addSubview(registerButton)
        background.addSubview(logoLbl)
        addConstraints()
        
        
    }
    
    func addConstraints() {
        
        background.anchor(
            top: self.topAnchor,
            leading: self.leadingAnchor,
            bottom: self.bottomAnchor,
            trailing: self.trailingAnchor)
        
        logoLbl.anchor(
            top: background.topAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 80, left: 0, bottom: 0, right: 0),
            size: .init(width: 300, height: 300))
        logoLbl.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        
        txtFieldName.anchor(
            top: background.topAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top:310, left: 0, bottom: 0, right: 0),
            size: .init(width: 320, height: 50))
        txtFieldName.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        txtFieldPassword.anchor(
            top: txtFieldName.topAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 80, left: 0, bottom: 0, right: 0),
            size: .init(width: 320, height: 50))
        txtFieldPassword.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        forgotPasswordButton.anchor(
            top: txtFieldPassword.topAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 80, left: 0, bottom: 0, right: 100),
            size: .init(width: 150, height: 30))
        forgotPasswordButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        loginButton.anchor(
            top: forgotPasswordButton.topAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 80, left: 0,bottom: 50, right: 0),
            size: .init(width: 220, height: 50))
        loginButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        registerButton.anchor(
            top: loginButton.topAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 70, left: 0, bottom: 50, right: 0),
            size: .init(width: 220, height: 50))
        registerButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
    }
}
