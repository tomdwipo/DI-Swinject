//
//  NewAssembly.swift
//  DITest
//
//  Created by Tommy on 19/01/22.
//

import Foundation
import Swinject
import Module_login

class NewAssembly: Assembly {
    func assemble(container: Container) {
        container.register(NewViewModel.self) { r in
            let resolve = NewViewModel(usecase: r.resolve(GetMessageUseCase.self)!)
            return resolve
        }
        
        container.register(NewViewController.self) { r in
            let resolve = NewViewController()
            resolve.viewModel = r.resolve(NewViewModel.self)!
            return resolve
        }
    }
}
