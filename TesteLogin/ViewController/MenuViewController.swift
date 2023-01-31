//
//  HomeViewController.swift
//  provitcha
//
//  Created by unicred on 06/01/23.
//

import UIKit

class MenuViewController: UIViewController {
    let customView = CadastroScreenView()
    var notas: GradesModel? // passo cinco
    
    override func loadView() {
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.registerButtom.addTarget(self, action: #selector(registerViewController), for: .touchUpInside)
        customView.gradesButtom.addTarget(self, action: #selector(NextViewController), for: .touchUpInside)
        
    }
    
    func getNota(notas: GradesModel){ //passo 4 NOTASMODEL --- recebendo dados
        self.notas = notas
    }
    
    @objc func registerViewController() {
        
        let NotaViewController = GradesaRegisterViewController()
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
