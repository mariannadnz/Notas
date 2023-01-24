//
//  ViewController.swift
//  Desafio4
//
//  Created by unicred on 13/01/23.
//

import UIKit

class CadastroNotaViewController: UIViewController {
    
    let RegisterScreenCustomView = NotaScreen()
    
    override func viewDidLoad() {
        view = RegisterScreenCustomView
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        RegisterScreenCustomView.registerButton.addTarget(self, action: #selector(NotasModel), for: .touchUpInside) //PASSO 2 NOTASMODEL
    }
    
    @objc func NotasModel() {
        let notas = Notas(nome: RegisterScreenCustomView.txtFieldNome.text,
                  notaUm: Float(RegisterScreenCustomView.txtFieldNota.text ?? ""),
                  notaDois: Float(RegisterScreenCustomView.txtFieldNotaDois.text ?? ""),
                          notaTres: Float(RegisterScreenCustomView.txtFieldNotaTres.text ?? "")) // passo 3 notasmodel
        let cadastroViewController = MenuViewController() //passo 6 (????)
        cadastroViewController.getNota(notas: notas)
        self.navigationController?.pushViewController(cadastroViewController, animated: true)
    }
}
