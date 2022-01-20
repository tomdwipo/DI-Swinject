//
//  GoAssembly.swift
//  DITest
//
//  Created by Tommy on 20/01/22.
//

import Foundation
import Swinject
import Module_login

class GoAssembly: Assembly {
    func assemble(container: Container) {
        container.register(GoViewModel.self) { r in
            let resolver = GoViewModel()
            resolver.usecase = r.resolve(GetMessageUseCase.self)!
            return resolver
        }
        
        container.register(GoViewController.self) { r in
            let resolver = GoViewController()
            resolver.viewModel = r.resolve(GoViewModel.self)!
            return resolver
        }
    }
    

}
