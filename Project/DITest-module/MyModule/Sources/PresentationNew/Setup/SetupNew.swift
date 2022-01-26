//
//  NewAssembly.swift
//  DITest
//
//  Created by Tommy on 19/01/22.
//

import Foundation
import Swinject
import Module_login

public class NewAssembly: Assembly {
    public init(){
        
    }
    
    public func assemble(container: Container) {
        container.register(NewViewModel.self) { r in
            let resolve = NewViewModel(usecase: r.resolve(GetMessageUseCase.self)!)
            return resolve
        }
        
        container.register(NewViewController.self) { r in
            let resolve = NewViewController(nibName: String(describing: NewViewController.self), bundle: Bundle.module.self)
            resolve.viewModel = r.resolve(NewViewModel.self)!
            return resolve
        }
    }
}
