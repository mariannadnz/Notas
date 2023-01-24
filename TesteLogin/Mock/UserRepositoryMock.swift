//
//  UserRepositoryMock.swift
//  Telocas
//
//  Created by unicred on 04/01/23.
//

import UIKit

class UserRepositoryMock {
    static let shared = UserRepositoryMock()
    var lala: [User] = []
    
    func getLogin(completion: @escaping([User]) -> ()){
        completion(lala)
    }
}
