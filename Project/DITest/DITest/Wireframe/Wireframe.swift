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
    func navigateToNextPage() -> UIViewController {
        return AssemblerManager.nextViewcontroller
    }
    
    func navigateToNewPage() -> UIViewController {
        return AssemblerManager.newViewcontroller
    }
    
    func navigateToAwayPage() -> UIViewController {
        return AssemblerManager.awayViewcontroller
    }
    
    func navigateToMorePage() -> UIViewController {
        return AssemblerManager.moreViewcontroller
    }
    
    
}
