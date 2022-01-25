//
//  Wireframe.swift
//  DITest
//
//  Created by Tommy on 26/01/22.
//

import Foundation
import Router
import UIKit

class Wireframe: RouterProtocol {
    func navigateToAwayPage() -> UIViewController {
        return AssemblerManager.awayViewcontroller
    }
    
    func navigateToMorePage() -> UIViewController {
        return AssemblerManager.moreViewcontroller
    }
    
    
}
