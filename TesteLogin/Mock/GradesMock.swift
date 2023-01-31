//
//  GradesMock.swift
//  TesteLogin
//
//  Created by unicred on 25/01/23.
//

import UIKit

class GradesRepositoryMock {
    static let gradesMock = GradesRepositoryMock()
    var gradesRepositoryMock: [GradesModel] = []
    
    func getGrades(completion: @escaping([GradesModel]) -> ()){
        completion(gradesRepositoryMock)
    }
}
