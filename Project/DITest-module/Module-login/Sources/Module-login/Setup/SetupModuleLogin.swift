//
//  File.swift
//  
//
//  Created by Tommy on 14/01/22.
//

import Foundation
import Swinject

public class ModuleLoginAssembly: Assembly {
    public init(){
        
    }
    public func assemble(container: Container) {
        container.register(LoginNetwork.self) { _ in LoginNetworkImpl() }.inObjectScope(.container)
        container.register(LoginRepository.self) { r in LoginRepositoryImpl(network: r.resolve(LoginNetwork.self)!) }.inObjectScope(.container)
        container.register(GetMessageUseCase.self) { r in
            let usecase = GetMessageUseCase(repository: r.resolve(LoginRepository.self)!)
            return usecase
        }.inObjectScope(.container)
    }
}


public class SetupModuleLogin {
    static let container = Container()
    static let assembler = Assembler([
        ModuleLoginAssembly()
    ],container: container)
    
    public static let usecase = assembler.resolver.resolve(GetMessageUseCase.self)!
    //
    //
    //
    //
}
