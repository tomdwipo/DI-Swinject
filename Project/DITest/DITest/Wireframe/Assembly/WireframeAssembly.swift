//
//  WireframeAssembly.swift
//  DITest
//
//  Created by Tommy on 26/01/22.
//

import Foundation
import Swinject
import SwiftUI
import PresentationAway
import Router

class WireframeAssembly: Assembly {
    func assemble(container: Container) {
        container.register(RouterProtocol.self) { _ in
            Wireframe()
        }
        
        container.register(UIHostingController<AwayView>.self) { r in
            var view = AwayView()
            view.router = r.resolve(RouterProtocol.self)!
            view.viewModel = r.resolve(AwayViewModel.self)!
            let resolver = UIHostingController(rootView: view)
            return resolver
        }
    }
}
