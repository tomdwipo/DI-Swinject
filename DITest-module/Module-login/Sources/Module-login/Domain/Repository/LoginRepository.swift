//
//  File.swift
//  
//
//  Created by Tommy on 14/01/22.
//

import Foundation

protocol LoginRepository {
    func getLogin() -> LoginModel
}

struct LoginRepositoryImpl: LoginRepository {
    
    let network: LoginNetwork
    let local: LocalData
    
    func getLogin() -> LoginModel {
        var data = local.getDataLocal()
        data = network.getLogin()
        return data
    }
    
    
}
