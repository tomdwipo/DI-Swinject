//
//  AssemberManager.swift
//  DITest
//
//  Created by Tommy on 14/01/22.
//

import Foundation
import Swinject
import Module_login
import SwiftUI
class AssemblerManager {
 
    static let assembler = Assembler([
        MainAssembly(),
        ModuleLoginAssembly(),
        HomeAssembly(),
        MoreAssembly(),
        NextAssembly(),
        NewAssembly(),
        GoAssembly(),
        AwayAssembly(),
        //
        //
        //
        ///
        ////
        ///
    ])
    
    static let viewcontroller = assembler.resolver.resolve(ViewController.self)!
    static let homeViewcontroller = assembler.resolver.resolve(HomeView.self)!
    static let moreViewcontroller = assembler.resolver.resolve(MoreView.self)!
    static let nextViewcontroller = assembler.resolver.resolve(NextViewController.self)!
    static let newViewcontroller = assembler.resolver.resolve(NewViewController.self)!
    static let goViewcontroller = assembler.resolver.resolve(GoViewController.self)!
    static let awayViewcontroller = assembler.resolver.resolve(UIHostingController<AwayView>.self)!

}


