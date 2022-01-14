//
//  File.swift
//  
//
//  Created by Tommy on 14/01/22.
//

import Foundation
import Swinject

class ModuleLoginAssembly: Assembly {
   
    private var isMockData: Bool
    init(isMockData: Bool = false) {
        self.isMockData = isMockData
    }
    
    func assemble(container: Container) {
        if isMockData {
            container.register(LoginNetwork.self) { _ in LoginMockNetworkImpl() }
        }else{
            container.register(LoginNetwork.self) { _ in LoginNetworkImpl() }
        }
        container.register(LocalData.self) { _ in LocalDataImpl() }

        container.register(LoginRepository.self) { r in LoginRepositoryImpl(network: r.resolve(LoginNetwork.self)!, local: r.resolve(LocalData.self)!) }
        container.register(GetMessageUseCase.self) { r in
            let usecase = GetMessageUseCase(repository: r.resolve(LoginRepository.self)!)
            return usecase
        }
    }
    
}


public class SetupModuleLogin {
    var isMockData: Bool
  
    public init(isMockData: Bool = false) {
       self.isMockData = isMockData
    }
 
    
    public func resolve() -> GetMessageUseCase  {
        let assembler = Assembler([
            ModuleLoginAssembly(isMockData: isMockData)
        ])
        return assembler.resolver.resolve(GetMessageUseCase.self)!
    }
}
