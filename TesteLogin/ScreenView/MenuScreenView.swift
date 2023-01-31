//
//  HomeScreenView.swift
//  provitcha
//
//  Created by unicred on 06/01/23.
//

import UIKit

class CadastroScreenView: UIView {
    
    lazy var registerButtom: UIButton = {
        let button = UIButton(configuration: .filled())
        button.setTitle("Cadastros de notas", for: .normal)
        return button
    }()
    

    
    lazy var gradesButtom: UIButton = {
        let button = UIButton(configuration: .filled())
        button.setTitle("Notas cadastradas", for: .normal)
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
        
        addSubview(registerButtom)
    
        addSubview(gradesButtom)
        addConstraints()
        
        
    }
    func addConstraints() {
        
        registerButtom.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: safeAreaLayoutGuide.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 250, left: 16, bottom: 0, right: 16),
            size: .init(width: 363, height: 40))
        
     
        gradesButtom.anchor(
            top: registerButtom.topAnchor,
            leading: registerButtom.leadingAnchor,
            bottom: nil,
            trailing: registerButtom.trailingAnchor,
            padding: .init(top:50, left: 0, bottom: 0, right: 0),
            size: .init(width: 363, height: 40))
        
    }
}

