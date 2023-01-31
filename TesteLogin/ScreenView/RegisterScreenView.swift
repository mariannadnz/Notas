

import UIKit

class GradesRegisterScreen: UIView {
    
    
    lazy var background: UIView = {
        
        let background = UIView()
       
        return background
    }()
    
    lazy var txtFieldName: UITextField = {
        let textField = UITextField()
        textField.placeholder = "   Nome completo*"
        textField.layer.borderWidth = 3
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.layer.borderColor = UIColor.tintColor.cgColor
        textField.layer.backgroundColor = UIColor.white.cgColor
        return textField
    }()
    
    lazy var txtFieldBirthDate: UITextField = {
        let textField = UITextField()
        textField.placeholder = "  Data de nascimento"
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.layer.borderWidth = 3
        textField.layer.borderColor = UIColor.tintColor.cgColor
        textField.layer.backgroundColor = UIColor.white.cgColor
        
        return textField
    }()
    
    lazy var txtFieldCpf: UITextField = {
        let textField = UITextField()
        textField.placeholder = "  CPF ou RG"
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.layer.borderWidth = 3
        textField.layer.borderColor = UIColor.tintColor.cgColor
        textField.layer.backgroundColor = UIColor.white.cgColor
        return textField
    }()
    
    lazy var txtFieldRg: UITextField = {
        let textField = UITextField()
        textField.placeholder = "  Password"
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.isSecureTextEntry = true
        textField.layer.borderWidth = 3
        textField.layer.borderColor = UIColor.tintColor.cgColor
        textField.layer.backgroundColor = UIColor.white.cgColor
        return textField
    }()
    
    lazy var txtFieldPhoneNumber: UITextField = {
        let textField = UITextField()
        textField.placeholder = "   Celular"
        textField.keyboardType = .phonePad
        textField.layer.borderWidth = 3
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.layer.borderColor = UIColor.tintColor.cgColor
        textField.layer.backgroundColor = UIColor.white.cgColor
        return textField
    }()
    
    lazy var txtFieldEmail: UITextField = {
        let textField = UITextField()
        textField.placeholder = "   E-mail"
        textField.keyboardType = .emailAddress
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.layer.borderWidth = 3
        textField.layer.borderColor = UIColor.tintColor.cgColor
        textField.layer.backgroundColor = UIColor.white.cgColor
        return textField
    }()
    
    
    lazy var registerButton: UIButton = {
        let button = UIButton(configuration: .filled())
        button.setTitle("Continuar", for: .normal)
        return button
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("oooooooooooooooooood")
    }
    
    func addSubviews() {
        
        addSubview(background)
        addSubview(txtFieldName)
        addSubview(txtFieldBirthDate)
        addSubview(txtFieldCpf)
        addSubview(txtFieldRg)
        addSubview(registerButton)
        addSubview(txtFieldEmail)
        addSubview(txtFieldPhoneNumber)
        addConstraints()
        
    }
    
    func addConstraints() {
        
        background.anchor(
            top: self.topAnchor,
            leading: self.leadingAnchor,
            bottom: self.bottomAnchor,
            trailing: self.trailingAnchor)
        
        txtFieldName.anchor(
            top: background.topAnchor,
            leading: nil,
            bottom: nil,
            trailing:nil,
            padding: .init(top: 100, left: 0, bottom: 0, right: 0),
            size: .init(width: 320, height: 50))
        txtFieldName.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        txtFieldBirthDate.anchor(
            top: txtFieldName.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing:nil,
            padding: .init(top: 50, left: 0, bottom: 0, right: 0),
            size: .init(width: 320, height: 50))
        txtFieldBirthDate.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        txtFieldCpf.anchor(
            top: txtFieldBirthDate.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing:nil,
            padding: .init(top: 50, left: 0, bottom: 0, right: 0),
            size: .init(width: 320, height: 50))
        txtFieldCpf.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        
        txtFieldRg.anchor(
            top: txtFieldCpf.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing:nil,
            padding: .init(top: 50, left: 0, bottom: 0, right: 0),
            size: .init(width: 320, height: 50))
        txtFieldRg.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        txtFieldEmail.anchor(
            top: txtFieldRg.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 50, left: 0, bottom: 0, right: 0),
            size: .init(width: 320, height: 50))
        txtFieldEmail.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        txtFieldPhoneNumber.anchor(
            top: txtFieldEmail.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 50, left: 0, bottom: 0, right: 0),
            size: .init(width: 320, height: 50))
        txtFieldPhoneNumber.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        registerButton.anchor(
            top: txtFieldPhoneNumber.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing:nil,
            padding: .init(top: 50, left: 0, bottom: 0, right: 0),
            size: .init(width: 320, height: 50))
        registerButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
    }
}
