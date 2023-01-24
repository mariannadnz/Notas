//
//  HomeScreenView.swift
//  provitcha
//
//  Created by unicred on 06/01/23.
//

import UIKit

class CadastroScreenView: UIView {
    
    lazy var cadastro: UIButton = {
        let button = UIButton()
        button.setTitle("Cadastro de Notas", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.masksToBounds = true
        button.layer.backgroundColor = UIColor(red: 0.05, green: 0.36, blue: 0.39, alpha: 1.00).cgColor
        button.layer.cornerRadius = 8
        return button
    }()
    

    
    lazy var notas: UIButton = {
        let button = UIButton()
        button.setTitle("Notas cadastradas", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.masksToBounds = true
        button.layer.backgroundColor = UIColor(red: 0.05, green: 0.36, blue: 0.39, alpha: 1.00).cgColor
        button.layer.cornerRadius = 8
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
        
        addSubview(cadastro)
    
        addSubview(notas)
        addConstraints()
        
        
    }
    func addConstraints() {
        
        cadastro.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: safeAreaLayoutGuide.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 250, left: 16, bottom: 0, right: 16),
            size: .init(width: 363, height: 40))
        
     
        notas.anchor(
            top: cadastro.topAnchor,
            leading: cadastro.leadingAnchor,
            bottom: nil,
            trailing: cadastro.trailingAnchor,
            padding: .init(top:50, left: 0, bottom: 0, right: 0),
            size: .init(width: 363, height: 40))
        
    }
}

