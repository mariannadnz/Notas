//
//  ViewController.swift
//  Desafio4
//
//  Created by unicred on 13/01/23.
//

import UIKit

class GradesaRegisterViewController: UIViewController {
    
    let RegisterScreenCustomView = GradesRegisterScreenView()
    var notas = [GradesModel]()
    
    override func viewDidLoad() {
        view = RegisterScreenCustomView
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        RegisterScreenCustomView.registerButton.addTarget(self, action: #selector(NotasModel), for: .touchUpInside) //PASSO 2 NOTASMODEL
    }
    
    @objc func NotasModel() {
        let userNota = GradesModel(nome: RegisterScreenCustomView.txtFieldName.text,
                          firstGradeModel: Float(RegisterScreenCustomView.txtFieldFirstGrade.text ?? ""),
                          secondGradeModel: Float(RegisterScreenCustomView.txtFieldSecondGrade.text ?? ""),
                          thirdGradeModel: Float(RegisterScreenCustomView.txtFieldThirdGrade.text ?? "")) // passo 3 notasmodel
        
        GradesRepositoryMock.gradesMock.gradesRepositoryMock.append(userNota) // Adiciona objeto userNota inicializado dentro de uma lista (linha 13)
        
      //  if let json = try? JSONEncoder().encode(self.notas) { // Converte o tipo lista de Notas (model) para json
      //      UserDefaults.standard.set(json, forKey: "notas") // Salva o json em um espaço da memória
     //   }
        
        let cadastroViewController = TableViewController() //passo 6 (????)
        self.navigationController?.pushViewController(cadastroViewController, animated: true)
    }
}
