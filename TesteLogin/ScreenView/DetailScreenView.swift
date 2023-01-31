//
//  DetalheScreenViewa.swift
//  Desafio4
//
//  Created by unicred on 17/01/23.
//

import UIKit

class DetailScreenView: BaseView {
    var nota: GradesModel? { //colocando a lista da detalhe view controller nas label
        didSet {
            lblName.text = nota?.nome
            lblFirstGrade.text = "\(nota?.firstGradeModel ?? 0)"
            lblSecondGrade.text = "\(nota?.secondGradeModel ?? 0)"
            lblThirdGrade.text = "\(nota?.thirdGradeModel ?? 0)"
            lblMedia.text = "\(nota?.media ?? 0)"
        }
    }
    
    lazy var logoLbl: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "eee")
        imageView.contentMode = .scaleAspectFit
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    lazy var lblName: UILabel = {
        let label = UILabel()
        label.layer.borderColor = TINT_COLOR.cgColor
        label.layer.backgroundColor = UIColor(red: 0.89, green: 0.91, blue: 0.87, alpha: 1.00).cgColor
        label.textAlignment = .center
        label.layer.borderWidth = 2
        label.layer.cornerRadius = 3
        label.text = "  Nome do aluno"
        return label
    }()
    
    
    lazy var lblFirstGrade: UILabel = {
        let label = UILabel()
        label.layer.borderColor = TINT_COLOR.cgColor
        label.layer.backgroundColor = UIColor(red: 0.89, green: 0.91, blue: 0.87, alpha: 1.00).cgColor
        label.textAlignment = .center
        label.layer.borderWidth = 2
        label.layer.cornerRadius = 3
        label.text = "  Primeira nota"
        return label
    }()
    lazy var lblSecondGrade: UILabel = {
        let label = UILabel()
        label.layer.borderColor = TINT_COLOR.cgColor
        label.layer.backgroundColor = UIColor(red: 0.89, green: 0.91, blue: 0.87, alpha: 1.00).cgColor
        label.textAlignment = .center
        label.layer.borderWidth = 2
        label.layer.cornerRadius = 3
        label.text = "  Segunda nota"
        return label
    }()
    lazy var lblThirdGrade: UILabel = {
        let label = UILabel()
        label.layer.borderColor = TINT_COLOR.cgColor
        label.layer.backgroundColor = UIColor(red: 0.89, green: 0.91, blue: 0.87, alpha: 1.00).cgColor
        label.textAlignment = .center
        label.layer.borderWidth = 2
        label.layer.cornerRadius = 3
        label.text = "  Terceira nota"
        return label
    }()
    lazy var lblMedia: UILabel = {
        let label = UILabel()
        label.layer.borderColor = TINT_COLOR.cgColor
        label.layer.backgroundColor = UIColor(red: 0.89, green: 0.91, blue: 0.87, alpha: 1.00).cgColor
        label.textAlignment = .center
        label.layer.borderWidth = 2
        label.layer.cornerRadius = 3
        label.text = "  Média das notas"
        return label
    }()
    lazy var Nome: UILabel = {
        let label = UILabel()
        label.layer.borderColor = TINT_COLOR.cgColor
        label.layer.backgroundColor = UIColor(red: 0.89, green: 0.91, blue: 0.87, alpha: 1.00).cgColor
        label.layer.borderWidth = 2
        label.layer.cornerRadius = 3
        label.text = "  Nome do aluno"
        return label
    }()
    
    lazy var NotaUm: UILabel = {
        let label = UILabel()
        label.layer.borderColor = TINT_COLOR.cgColor
        label.layer.backgroundColor = UIColor(red: 0.89, green: 0.91, blue: 0.87, alpha: 1.00).cgColor
        label.layer.borderWidth = 2
        label.layer.cornerRadius = 3
        label.text = "  Primeira nota"
        return label
    }()
    lazy var NotaDois: UILabel = {
        let label = UILabel()
        label.layer.borderColor = TINT_COLOR.cgColor
        label.layer.backgroundColor = UIColor(red: 0.89, green: 0.91, blue: 0.87, alpha: 1.00).cgColor
        label.layer.borderWidth = 2
        label.layer.cornerRadius = 3
        label.text = "  Segunda nota"
        return label
    }()
    lazy var notaTres: UILabel = {
        let label = UILabel()
        label.layer.borderColor = TINT_COLOR.cgColor
        label.layer.backgroundColor = UIColor(red: 0.89, green: 0.91, blue: 0.87, alpha: 1.00).cgColor
        label.layer.borderWidth = 2
        label.layer.cornerRadius = 3
        label.text = "  Terceira nota"
        return label
    }()
    lazy var media: UILabel = {
        let label = UILabel()
        label.layer.borderColor = TINT_COLOR.cgColor
        label.layer.backgroundColor = UIColor(red: 0.89, green: 0.91, blue: 0.87, alpha: 1.00).cgColor
        
        label.layer.borderWidth = 2
        label.layer.cornerRadius = 3
        label.text = "  Média das notas"
        return label
    }()
    
    lazy var nextButton: UIButton = {
        let button = UIButton(configuration: .filled())
        button.setTitle("Voltar para notas", for: .normal)
        return button
    }()
    
    
    
    
    
    override func addSubviews() {
        addSubview(lblName)
        addSubview(lblThirdGrade)
        addSubview(lblMedia)
        addSubview(lblThirdGrade)
        addSubview(lblSecondGrade)
        addSubview(lblFirstGrade)
        addSubview(logoLbl)
        addSubview(Nome)
        addSubview(notaTres)
        addSubview(NotaDois)
        addSubview(NotaUm)
        addSubview(media)
        addSubview(nextButton)
        
        
        
        
    }
    
    override func setConstraints() {
        
        
        logoLbl.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: -70, left: 0, bottom: 0, right: 0),
            size: .init(width: 300, height: 300))
        logoLbl.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        Nome.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: nil,
            bottom: nil,
            trailing: centerXAnchor,
            padding: .init(top: 230, left: 20, bottom: 0, right: 16),
            size: .init(width: 160, height: 40))
        
        lblName.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: centerXAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 230, left: 30, bottom: 0, right: 16),
            size: .init(width: 160, height: 40))
        
        
        NotaUm.anchor(
            top: Nome.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: centerXAnchor,
            padding: .init(top: 20, left: 20, bottom: 0, right: 16),
            size: .init(width: 160, height: 40))
        
        lblFirstGrade.anchor(
            top: lblName.bottomAnchor,
            leading: centerXAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 20, left: 30, bottom: 0, right: 16),
            size: .init(width: 160, height: 40))
        
        NotaDois.anchor(
            top: NotaUm.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: centerXAnchor,
            padding: .init(top: 20, left: 20, bottom: 0, right: 16),
            size: .init(width: 160, height: 40))
        
        
        lblSecondGrade.anchor(
            top: lblFirstGrade.bottomAnchor,
            leading: centerXAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 20, left: 30, bottom: 0, right: 16),
            size: .init(width: 160, height: 40))
        
        notaTres.anchor(
            top: NotaDois.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: centerXAnchor,
            padding: .init(top: 20, left: 20, bottom: 0, right: 16),
            size: .init(width: 160, height: 40))
        
        lblThirdGrade.anchor(
            top: lblSecondGrade.bottomAnchor,
            leading: centerXAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 20, left: 30, bottom: 0, right: 16),
            size: .init(width: 160, height: 40))
        
        media.anchor(
            top: notaTres.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: centerXAnchor,
            padding: .init(top: 20, left: 20, bottom: 0, right: 16),
            size: .init(width: 160, height: 40))
        
        lblMedia.anchor(
            top: lblThirdGrade.bottomAnchor,
            leading: centerXAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 20, left: 30, bottom: 0, right: 16),
            size: .init(width: 160, height: 40))
        
        
        
        nextButton.anchor(
            top: lblMedia.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing:nil,
            padding: .init(top: 50, left: 0, bottom: 0, right: 0),
            size: .init(width: 320, height: 50))
        nextButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }
}


