//
//  ViewController.swift
//  AppleRocket
//
//  Created by Kaue Ludovico on 15/01/23.
//

import UIKit

class TableViewController: UIViewController {
    
    typealias CustomView = ListPhoneScreenView
    var customView = CustomView()
    var notas: [Notas] = []
    var media = Float()
    var notaCell: Notas?
    var longPressRecognizer: UILongPressGestureRecognizer?
    
    override func loadView() {
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        longPressRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(longPressed))
        //click longo p fazer a celula ir pra EditCellViewController
        
        
        customView.tableView.delegate = self
        customView.tableView.dataSource = self
        retrieveUserDefault()
    
    }
    
    @objc func longPressed() {
        let editCellViewController = EditCellViewController() //linha 35 até 45 mandando pra EditCell
        
        if let notaCell = notaCell {
            editCellViewController.getNota(nota: notaCell)
        }
        self.navigationController?.pushViewController(editCellViewController, animated: true)
    }
    
    func getDataCell(nota: Notas) {
        self.notaCell = nota
    }
    
    
    func getNota(nota: Notas) {
        self.notas.append(nota)
        customView.tableView.reloadData()
    }
    
    func retrieveUserDefault() {
        if let data = UserDefaults.standard.object(forKey: "notas") as? Data, // Captura o json do espaço da memória
           let json = try? JSONDecoder().decode(Array<Notas>.self, from: data) { // Converte de json para uma lista de notas do tipo Notas(model)
            self.notas = json //Coloca os dados da lista vinda do espaço da memória para a lista que popula a tableview
        }
    }
    
    func calculateAverage(nota1: Float, nota2: Float, nota3: Float) -> Float {
        return ((nota1 + nota2) + nota3) / 3
    }
}

extension TableViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notas.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: customView.cellId, for: indexPath) as! TableViewCell
        cell.notas = notas[indexPath.item] //item é o item da variavel e esse notas é da tableViewCell
        cell.notas?.media = calculateAverage(nota1: notas[indexPath.item].notaUm ?? 0, nota2: notas[indexPath.item].notaDois ?? 0, nota3: notas[indexPath.item].notaTres ?? 0)
        
        cell.addGestureRecognizer(longPressRecognizer!) //parte dois do click longo
        getDataCell(nota: notas[indexPath.item])
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == .delete){
            notas.remove(at: indexPath.item)
            tableView.deleteRows(at: [indexPath], with: .automatic)  //p excluir a celula
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //celula clicavel e passa p/ outra tela
        let detalheViewController = DetalheViewController()
        detalheViewController.getNota(nota: notas[indexPath.item], media: calculateAverage(nota1: notas[indexPath.item].notaUm ?? 0, nota2: notas[indexPath.item].notaDois ?? 0, nota3: notas[indexPath.item].notaTres ?? 0))//passando a lista notas pro get nota q eu fiz na detalhe view controller
        self.navigationController?.pushViewController(detalheViewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80 //tamanho de celula
    }
    
    
}
