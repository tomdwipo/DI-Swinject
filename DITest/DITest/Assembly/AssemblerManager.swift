//
//  AssemberManager.swift
//  DITest
//
//  Created by Tommy on 14/01/22.
//

import Foundation
import Swinject
import Module_login

class AssemblerManager {
    
    static let viewControllerContainer: Container = {
        let container = Container()
        container.register(ViewController.self) { r in
            let resolve = ViewController()
            resolve.usecase = SetupModuleLogin().resolve()
            return resolve
        }
        return container
    }()
    
    
    static let HomeContainer: Container = {
        let container = Container()
        container.register(HomeViewController.self) { r in
            let resolve = HomeViewController()
            return resolve
        }
        return container
    }()
    
    static let viewcontroller = viewControllerContainer.resolve(ViewController.self)!
    static let homeVC = HomeContainer.resolve(HomeViewController.self)!
}
