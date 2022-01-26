//
//  GoAssembly.swift
//  DITest
//
//  Created by Tommy on 20/01/22.
//

import Foundation
import Swinject
import Module_login
import Router

@available(iOS 13.0, *)
public class GoAssembly: Assembly {
    public init() {
        
    }
    
    public func assemble(container: Container) {
        container.register(GoViewModel.self) { r in
            let resolver = GoViewModel()
            resolver.usecase = r.resolve(GetMessageUseCase.self)!
            return resolver
        }
        
        container.register(GoViewController.self) { r in
            let resolver = GoViewController(nibName: String(describing: GoViewController.self), bundle: Bundle.module.self)
            resolver.router = r.resolve(RouterProtocol.self)!
            resolver.viewModel = r.resolve(GoViewModel.self)!
            return resolver
        }
    }
    

}
