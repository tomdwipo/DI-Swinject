//
//  File.swift
//  
//
//  Created by Tommy on 14/01/22.
//

import Foundation

protocol LocalData {
    func getDataLocal() -> LoginModel
}

struct LocalDataImpl: LocalData {
    func getDataLocal() -> LoginModel {
        return LoginModel(message: "local Data")
    }
}
