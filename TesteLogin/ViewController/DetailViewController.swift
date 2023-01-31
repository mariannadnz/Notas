//
//  DetalheViewController.swift
//  Desafio4
//
//  Created by unicred on 17/01/23.
//

import UIKit
class DetailViewController: UIViewController {
    let detailScreenView = DetailScreenView()
    
    
    
    override func loadView() {
        view = detailScreenView
        
        detailScreenView.nextButton.addTarget(self, action: #selector(back), for: .touchUpInside)
}
    
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    func getNota(nota: GradesModel, media: Float) {//recebendo a lista la da table view controller
        detailScreenView.nota = nota
        detailScreenView.nota?.media = media
    }
    
    @objc func back(){
        let MenuViewController = MenuViewController()
        self.navigationController?.pushViewController(MenuViewController, animated: true)
    }
}

