//
//  EditCellViewController.swift
//  TesteLogin
//
//  Created by unicred on 25/01/23.
//

import UIKit
class EditCellViewController: UIViewController {
    let editCellScreen = EditCellScreenView()
    
    override func loadView() {
        view = editCellScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editCellScreen.updateButton.addTarget(self, action: #selector(updateData), for: .touchUpInside)
    }
    
    func getNota(nota: Notas) {
        editCellScreen.nota = nota
    }
    
    @objc func updateData() {
        let notaUpdated = Notas(
            nome: editCellScreen.txtFieldNome.text,
            notaUm: Float(editCellScreen.txtFieldNota.text ?? ""),
            notaDois: Float(editCellScreen.txtFieldNotaDois.text ?? ""),
            notaTres: Float(editCellScreen.txtFieldNotaTres.text ?? ""),
            media: editCellScreen.nota?.media)
        
        let tableViewController = TableViewController()
        tableViewController.getNota(nota: notaUpdated)
        self.navigationController?.pushViewController(tableViewController, animated: true)
    }
}
