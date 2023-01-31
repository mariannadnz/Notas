//
//  EditCellScreenView.swift
//  TesteLogin
//
//  Created by unicred on 25/01/23.
//

import UIKit

class EditCellScreenView: UIView {
    var nota: GradesModel? {
        didSet {
            txtFieldName.text = nota?.nome
            txtFieldFirstGrade.text = "\(nota?.firstGradeModel ?? 0)"
            txtFieldSecondGrade.text = "\(nota?.secondGradeModel ?? 0)"
            txtFieldThirdGrade.text = "\(nota?.thirdGradeModel ?? 0)" //converte de float pra string
           
        }
        }
    
    lazy var background: UIView = {
        let background = UIView()
        return background
    }()
    
    lazy var txtFieldName: UITextField = {
        let textField = UITextField()
        textField.placeholder = "   Nome"
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.layer.borderWidth = 3
        textField.layer.borderColor = UIColor.tintColor.cgColor
        textField.layer.backgroundColor = UIColor.white.cgColor
        return textField
    }()
    
    lazy var txtFieldFirstGrade: UITextField = {
        let textField = UITextField()
        textField.placeholder = "   Primeira Nota"
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.layer.borderWidth = 3
        textField.layer.borderColor = UIColor.tintColor.cgColor
        textField.layer.backgroundColor = UIColor.white.cgColor
        return textField
    }()
    
    lazy var txtFieldSecondGrade: UITextField = {
        let textField = UITextField()
        textField.placeholder = "  Segunda Nota"
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.layer.borderWidth = 3
        textField.layer.borderColor = UIColor.tintColor.cgColor
        textField.layer.backgroundColor = UIColor.white.cgColor
        
        return textField
    }()
    
    lazy var txtFieldThirdGrade: UITextField = {
        let textField = UITextField()
        textField.placeholder = "  Terceira Nota"
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.layer.borderWidth = 3
        textField.layer.borderColor = UIColor(red: 0.05, green: 0.36, blue: 0.39, alpha: 1.00).cgColor
        textField.layer.backgroundColor = UIColor.white.cgColor
        return textField
    }()
    
    
    
    lazy var updateButton: UIButton = {
        let button = UIButton(configuration: .filled())
        button.setTitle("Alterar Notas", for: .normal)
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
        addSubview(txtFieldFirstGrade)
        addSubview(txtFieldSecondGrade)
        addSubview(txtFieldThirdGrade)
        addSubview(updateButton)
        addSubview(txtFieldName)
        
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
            leading: txtFieldFirstGrade.leadingAnchor,
            bottom: nil,
            trailing: txtFieldFirstGrade.trailingAnchor,
            padding: .init(top: 100, left: 0, bottom: 0, right: 0),
            size: .init(width: 250, height: 120))
        txtFieldFirstGrade.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        
        txtFieldFirstGrade.anchor(
            top: txtFieldName.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing:nil,
            padding: .init(top: 30, left: 0, bottom: 0, right: 0),
            size: .init(width: 250, height: 120))
        txtFieldFirstGrade.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        txtFieldSecondGrade.anchor(
            top: txtFieldFirstGrade.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing:nil,
            padding: .init(top: 30, left: 0, bottom: 0, right: 0),
            size: .init(width: 250, height: 120))
        txtFieldSecondGrade.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        txtFieldThirdGrade.anchor(
            top: txtFieldSecondGrade.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing:nil,
            padding: .init(top: 30, left: 0, bottom: 0, right: 0),
            size: .init(width: 250, height: 120))
        txtFieldThirdGrade.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        
        updateButton.anchor(
            top: txtFieldThirdGrade.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing:nil,
            padding: .init(top: 30, left: 0, bottom: 0, right: 0),
            size: .init(width: 320, height: 50))
        updateButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
    }
    
}

