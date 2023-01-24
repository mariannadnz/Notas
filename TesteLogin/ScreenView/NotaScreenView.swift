

import UIKit

class NotaScreen: UIView {
    
    
    lazy var background: UIView = {
        let background = UIView()
        let customColor = UIColor.white
        background.backgroundColor = customColor
        return background
    }()
    
    lazy var txtFieldNome: UITextField = {
        let textField = UITextField()
        textField.placeholder = "   Nome"
        textField.layer.borderWidth = 3
        textField.layer.borderColor = UIColor(red: 0.05, green: 0.36, blue: 0.39, alpha: 1.00).cgColor
        textField.layer.backgroundColor = UIColor.white.cgColor
        return textField
    }()
    
    lazy var txtFieldNota: UITextField = {
        let textField = UITextField()
        textField.placeholder = "   Primeira Nota"
        textField.layer.borderWidth = 3
        textField.layer.borderColor = UIColor(red: 0.05, green: 0.36, blue: 0.39, alpha: 1.00).cgColor
        textField.layer.backgroundColor = UIColor.white.cgColor
        return textField
    }()
    
    lazy var txtFieldNotaDois: UITextField = {
        let textField = UITextField()
        textField.placeholder = "  Segunda Nota"
        textField.layer.borderWidth = 3
        textField.layer.borderColor = UIColor(red: 0.05, green: 0.36, blue: 0.39, alpha: 1.00).cgColor
        textField.layer.backgroundColor = UIColor.white.cgColor
        
        return textField
    }()
    
    lazy var txtFieldNotaTres: UITextField = {
        let textField = UITextField()
        textField.placeholder = "  Terceira Nota"
        textField.layer.borderWidth = 3
        textField.layer.borderColor = UIColor(red: 0.05, green: 0.36, blue: 0.39, alpha: 1.00).cgColor
        textField.layer.backgroundColor = UIColor.white.cgColor
        return textField
    }()
    
    
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.setTitle("     Finalizar Cadastro", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.backgroundColor = UIColor(red: 0.05, green: 0.36, blue: 0.39, alpha: 1.00).cgColor
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 10
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
        addSubview(txtFieldNota)
        addSubview(txtFieldNotaDois)
        addSubview(txtFieldNotaTres)
        addSubview(registerButton)
        addSubview(txtFieldNome)
        
        addConstraints()
        
    }
    
    func addConstraints() {
        
        background.anchor(
            top: self.topAnchor,
            leading: self.leadingAnchor,
            bottom: self.bottomAnchor,
            trailing: self.trailingAnchor)
        
        txtFieldNome.anchor(
            top: background.topAnchor,
            leading: txtFieldNota.leadingAnchor,
            bottom: nil,
            trailing: txtFieldNota.trailingAnchor,
            padding: .init(top: 100, left: 0, bottom: 0, right: 0),
            size: .init(width: 250, height: 120))
        txtFieldNota.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        
        txtFieldNota.anchor(
            top: txtFieldNome.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing:nil,
            padding: .init(top: 30, left: 0, bottom: 0, right: 0),
            size: .init(width: 250, height: 120))
        txtFieldNota.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        txtFieldNotaDois.anchor(
            top: txtFieldNota.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing:nil,
            padding: .init(top: 30, left: 0, bottom: 0, right: 0),
            size: .init(width: 250, height: 120))
        txtFieldNotaDois.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        txtFieldNotaTres.anchor(
            top: txtFieldNotaDois.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing:nil,
            padding: .init(top: 30, left: 0, bottom: 0, right: 0),
            size: .init(width: 250, height: 120))
        txtFieldNotaTres.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        
        registerButton.anchor(
            top: txtFieldNotaTres.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing:nil,
            padding: .init(top: 30, left: 0, bottom: 0, right: 0),
            size: .init(width: 320, height: 50))
        registerButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
    }

}
