//
//  UserRepositoryMock.swift
//  Telocas
//
//  Created by unicred on 04/01/23.
//

import UIKit

class UserRepositoryMock { //indtancia estatica da propria classe, acessada em qualquer lugar do app
    static let shared = UserRepositoryMock() //static é pra algo q vou usar muito, no appa todo
    var UserMock: [User] = [] //aqui ele é um array e é vazio
                    // o que vai aqui dentro é do tipo user
    func getLogin(completion: @escaping([User]) -> ()) {
        completion(UserMock)
    }
}
