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

@available(iOS 13.0, *)
public struct AwayAssembly: Assembly {
    public init(){
        
    }
    public func assemble(container: Container) {
        container.register(AwayViewModel.self) { r in
            let resolver = AwayViewModel()
            resolver.usecase = r.resolve(GetMessageUseCase.self)!
            return resolver
        }
        
       
    }
}
