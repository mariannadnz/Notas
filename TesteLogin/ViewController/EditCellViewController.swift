//
//  EditCellViewController.swift
//  TesteLogin
//
//  Created by unicred on 25/01/23.
//

import UIKit
class EditCellViewController: UIViewController {
    var updateGrade: (GradesModel) -> Void = {_ in}
    
    let editCellScreen = EditCellScreenView() 
    
    override func loadView() {
        view = editCellScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editCellScreen.updateButton.addTarget(self, action: #selector(updateData), for: .touchUpInside)
        
   
    }
    
    func getNota(nota: GradesModel) {
        editCellScreen.nota = nota
    }
    
    @objc func updateData() { //mandando os dados editados
        let notaUpdated = GradesModel(
            nome: editCellScreen.txtFieldName.text,
            firstGradeModel: Float(editCellScreen.txtFieldFirstGrade.text ?? ""),
            secondGradeModel: Float(editCellScreen.txtFieldSecondGrade.text ?? ""),
            thirdGradeModel: Float(editCellScreen.txtFieldThirdGrade.text ?? ""),
            media: editCellScreen.nota?.media)
        
        let tableViewController = TableViewController()
   
        
        updateGrade(notaUpdated)
        
        self.navigationController?.pushViewController(tableViewController, animated: true) //mandando os dados editados
    }
}
