//
//  HomeViewController.swift
//  provitcha
//
//  Created by unicred on 06/01/23.
//

import UIKit

class MenuViewController: UIViewController {
    let customView = CadastroScreenView()
    var notas: Notas? // passo cinco
    
    override func loadView() {
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.cadastro.addTarget(self, action: #selector(registerViewController), for: .touchUpInside)
        customView.notas.addTarget(self, action: #selector(NextViewController), for: .touchUpInside)
        
    }
    
    func getNota(notas: Notas){ //passo 4 NOTASMODEL --- recebendo dados
        self.notas = notas
    }
    
    @objc func registerViewController() {
        
        let NotaViewController = CadastroNotaViewController()
        self.navigationController?.pushViewController(NotaViewController, animated: true)
    }
    
    @objc func NextViewController() {
        let TableViewController = TableViewController()
        if let nota = self.notas {
            TableViewController.getNota(nota: nota)
        }
        self.navigationController?.pushViewController(TableViewController, animated: true)
    }
}
