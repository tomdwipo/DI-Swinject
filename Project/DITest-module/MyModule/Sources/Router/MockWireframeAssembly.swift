//
//  File.swift
//  
//
//  Created by Tommy on 26/01/22.
//

import Foundation
import Swinject

public class MockWireframeAssembly: Assembly {
    public init(){
        
    }
    
    public func assemble(container: Container) {
        container.register(RouterProtocol.self) { _ in
            MockWireframe()
        }
    }
}
