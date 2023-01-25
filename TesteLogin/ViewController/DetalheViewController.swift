//
//  DetalheViewController.swift
//  Desafio4
//
//  Created by unicred on 17/01/23.
//

import UIKit
class DetalheViewController: UIViewController {
    let CustomView = DetalheScreenView()
    
    
    override func loadView() {
        view = CustomView
}
    
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    func getNota(nota: Notas, media: Float) {//recebendo a lista la da table view controller
        CustomView.nota = nota
        CustomView.nota?.media = media
    }
}

