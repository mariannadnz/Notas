//
//  DetalheScreenViewa.swift
//  Desafio4
//
//  Created by unicred on 17/01/23.
//

import UIKit

class DetalheScreenView: BaseView {
    var nota: Notas? { //colocando a lista da detalhe view controller nas label
        didSet {
            lblNome.text = nota?.nome
            lblNota.text = "\(nota?.notaUm)"
            lblNotaDois.text = "\(nota?.notaDois)"
            lblNotaTres.text = "\(nota?.notaTres)"
            lblMedia.text = "\(nota?.media)"
        }
    }
    
    lazy var lblNome: UILabel = {
   let label = UILabel()
        label.text = "  Nome do aluno"
        return label
    }()
  
   
    lazy var lblNota: UILabel = {
   let label = UILabel()
        label.text = "  Primeira nota"
        return label
    }()
    lazy var lblNotaDois: UILabel = {
   let label = UILabel()
        label.text = "  Segunda nota"
        return label
    }()
    lazy var lblNotaTres: UILabel = {
   let label = UILabel()
        label.text = "  Terceira nota"
        return label
    }()
    lazy var lblMedia: UILabel = {
   let label = UILabel()
        label.text = "  Média das notas"
        return label
    }()
    lazy var Nome: UILabel = {
   let label = UILabel()
        label.text = "  Nome do aluno"
        return label
    }()
  
   
    lazy var NotaUm: UILabel = {
   let label = UILabel()
        label.text = "  Primeira nota"
        return label
    }()
    lazy var NotaDois: UILabel = {
   let label = UILabel()
        label.text = "  Segunda nota"
        return label
    }()
    lazy var NotaTres: UILabel = {
   let label = UILabel()
        label.text = "  Terceira nota"
        return label
    }()
    lazy var Media: UILabel = {
   let label = UILabel()
        label.text = "  Média das notas"
        return label
    }()
    
    
    
    
    
    
    override func addSubviews() {
        addSubview(lblNome)
        addSubview(lblNotaTres)
        addSubview(lblMedia)
        addSubview(lblNotaTres)
        addSubview(lblNotaDois)
        addSubview(lblNota)
        
        addSubview(Nome)
        addSubview(NotaTres)
        addSubview(NotaDois)
        addSubview(NotaUm)
        addSubview(Media)
  

  
        
    }
    
    override func setConstraints() {
        
        Nome.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: safeAreaLayoutGuide.leadingAnchor,
            bottom: lblNome.topAnchor,
            trailing: safeAreaLayoutGuide.trailingAnchor,
            padding: .init(top: 2, left: 10, bottom: 0, right: 0),
            size: .init(width: 200, height: 40))
        
        lblNome.anchor(
            top: Nome.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 2, left: 10, bottom: 0, right: 0),
            size: .init(width: 200, height: 40))
        
        
        NotaUm.anchor(
            top: lblNome.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 2, left: 10, bottom: 0, right: 0),
            size: .init(width: 200, height: 40))
        
        lblNota.anchor(
            top: NotaUm.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 2, left: 10, bottom: 0, right: 0),
            size: .init(width: 200, height: 40))
        
        NotaDois.anchor(
            top: lblNota.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 2, left: 10, bottom: 0, right: 0),
            size: .init(width: 200, height: 40))
        
        
        lblNotaDois.anchor(
            top: NotaDois.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 2, left: 10, bottom: 0, right: 0),
            size: .init(width: 200, height: 40))
        
        NotaTres.anchor(
            top: lblNotaDois.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 2, left: 10, bottom: 0, right: 0),
            size: .init(width: 200, height: 40))
        
        lblNotaTres.anchor(
            top: NotaTres.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 2, left: 10, bottom: 0, right: 0),
            size: .init(width: 200, height: 40))
        
        Media.anchor(
            top: lblNotaTres.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 2, left: 10, bottom: 0, right: 0),
            size: .init(width: 200, height: 40))
        
        lblMedia.anchor(
            top: Media.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 2, left: 10, bottom: 0, right: 0),
            size: .init(width: 200, height: 40))
    }
}

    
