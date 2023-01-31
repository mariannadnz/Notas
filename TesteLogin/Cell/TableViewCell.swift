//
//  ListPhoneCollectionViewCell.swift
//  AppleRocket
//
//  Created by Kaue Ludovico on 16/01/23.
//

import UIKit

class TableViewCell: BaseCell {
    
    var notas: GradesModel? {
        didSet {
            lblNome.text = notas?.nome
            if let media = notas?.media {
                lblMedia.text = "\(media)"
            }   
        }
    }
    
    lazy var lblNome: UILabel = {
        let label = UILabel()
        label.text = "Nome do aluno"
        label.textColor = .black
        return label
    }()

    
    
    lazy var lblMedia: UILabel = {
   let label = UILabel()
        label.text = "  Média das notas"
        return label
    }()
//
    
    

    
    override func addSubviews() {
        addSubview(lblNome)
//        addSubview(lblNotaTres)
        addSubview(lblMedia)
        layer.borderColor = TINT_COLOR.cgColor
        layer.borderWidth = 3
        layer.cornerRadius = 5

  
        
    }
    
    override func setConstraints() {
        lblNome.anchor(
            top: self.topAnchor,
            leading: self.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 0, left: 10, bottom: 0, right: 0),
            size: .init(width: 200, height: 40))

        lblMedia.anchor(
            top: lblNome.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 0, left: 10, bottom: 0, right: 0),
            size: .init(width: 200, height: 40))
    }
}
