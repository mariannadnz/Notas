

import UIKit

class TableViewController: UIViewController {
    
    typealias CustomView = ListPhoneScreenView
    var customView = CustomView()
    var notas: [GradesModel] = []
    var media = Float()
    var notaCell: GradesModel?
    
    override func loadView() {
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        customView.tableView.delegate = self
        customView.tableView.dataSource = self
        //retrieveUserDefault()
    
        GradesRepositoryMock.gradesMock.getGrades { notas in
            self.notas = notas
        }
    }
    
    func longPressed(index: Int) {
        let editCellViewController = EditCellViewController() //linha 35 até 45 mandando pra EditCell
        
        if let notaCell = notaCell {
            editCellViewController.getNota(nota: notas[index])
            editCellViewController.updateGrade = { grade in
                GradesRepositoryMock.gradesMock.gradesRepositoryMock[index] = grade  //atualizando os dados
            }
        }
        self.navigationController?.pushViewController(editCellViewController, animated: true)
    }
    
    func getDataCell(nota: GradesModel) {
        self.notaCell = nota
    }
    
    
    func getNota(nota: GradesModel) {
        self.notas.append(nota)
        customView.tableView.reloadData() //recebendo dado atualizado da editCell
    }
    
//    func retrieveUserDefault() {
//        if let data = UserDefaults.standard.object(forKey: "notas") as? Data, // Captura o json do espaço da memória
//           let json = try? JSONDecoder().decode(Array<Notas>.self, from: data) { // Converte de json para uma lista de notas do tipo Notas(model)
//            self.notas = json //Coloca os dados da lista vinda do espaço da memória para a lista que popula a tableview
//        }
    }
    
    func calculateAverage(nota1: Float, nota2: Float, nota3: Float) -> Float {
        return ((nota1 + nota2) + nota3) / 3
    }

//}
extension TableViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notas.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: customView.cellId, for: indexPath) as! TableViewCell
        cell.notas = notas[indexPath.item] //item é o item da variavel e esse notas é da tableViewCell
        cell.notas?.media = calculateAverage(nota1: notas[indexPath.item].firstGradeModel ?? 0, nota2: notas[indexPath.item].secondGradeModel ?? 0, nota3: notas[indexPath.item].thirdGradeModel ?? 0)
        
        getDataCell(nota: notas[indexPath.item])
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == .delete){
            notas.remove(at: indexPath.item)
            tableView.deleteRows(at: [indexPath], with: .automatic)  //p excluir a celula
            GradesRepositoryMock.gradesMock.gradesRepositoryMock.remove(at: indexPath.item) // deleta de vdd, chamando do mock
        }
        
    }
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let action = UIContextualAction(style: .normal, title: "Editar") { _, _, _ in  //
            self.longPressed(index: indexPath.item) 
        }
        
        action.backgroundColor = .systemBlue
        
        return UISwipeActionsConfiguration(actions: [action])   // p editar a celula
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //celula clicavel e passa p/ outra tela
        let detalheViewController = DetailViewController()
        detalheViewController.getNota(nota: notas[indexPath.item], media: calculateAverage(nota1: notas[indexPath.item].firstGradeModel ?? 0, nota2: notas[indexPath.item].secondGradeModel ?? 0, nota3: notas[indexPath.item].thirdGradeModel ?? 0))//passando a lista notas pro get nota q eu fiz na detalhe view controller
        self.navigationController?.pushViewController(detalheViewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80 //tamanho de celula
    }
    
    
}
