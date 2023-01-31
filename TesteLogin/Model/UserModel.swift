//
//  UserModel.swift
//  Telocas
//
//  Created by unicred on 04/01/23.
//

import UIKit

struct User{  //inicializado pq o dado é obrigatorio 
    var name = String()
    var cpf = String()
    var birth = String()
    var phone = String()
    
    var login: Login
    
    init(name: String, cpf: String, birth: String, phone: String, login: Login) {
        self.name = name
        self.cpf = cpf
        self.birth = birth
        self.phone = phone
        self.login = login
    }
    
}

struct Login{
    var email: String
    var password: String
}
