//
//  AwayAssembly.swift
//  DITest
//
//  Created by Tommy on 20/01/22.
//

import Foundation
import Swinject
import Module_login
import SwiftUI

struct AwayAssembly: Assembly {
    func assemble(container: Container) {
        container.register(AwayViewModel.self) { r in
            let resolver = AwayViewModel()
            resolver.usecase = r.resolve(GetMessageUseCase.self)!
            return resolver
        }
        
        container.register(UIHostingController<AwayView>.self) { r in
            var view = AwayView()
            view.viewModel = r.resolve(AwayViewModel.self)!
            let resolver = UIHostingController(rootView: view)
            return resolver
            
        }
    }
}
