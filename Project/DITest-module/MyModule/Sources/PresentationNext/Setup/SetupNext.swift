//
//  NextAssembly.swift
//  DITest
//
//  Created by Tommy on 18/01/22.
//


import Foundation
import Swinject
import Module_login
import Router

public class NextAssembly: Assembly {
    public init() {
        
    }
    
    public func assemble(container: Container) {
        container.register(NextViewModel.self) { r in
            let resolve = NextViewModel(usecase: r.resolve(GetMessageUseCase.self)!)
            return resolve
        }
        
        container.register(NextViewController.self) { r in
            let resolve = NextViewController(nibName: String(describing: NextViewController.self), bundle: Bundle.module.self)
            resolve.router = r.resolve(RouterProtocol.self)!
            resolve.viewModel = r.resolve(NextViewModel.self)!
            return resolve
        }
        
        
    }
}
