//
//  DITestTests.swift
//  DITestTests
//
//  Created by Tommy on 14/01/22.
//

import XCTest
@testable import DITest
import PresentationGo

class DITestTests: XCTestCase {
    
    func test_goVc() {
        let vc = AssemblerManager.goViewcontroller
        vc.loadViewIfNeeded()
        XCTAssertEqual(vc.textLabel.text, "default")
        vc.button.sendActions(for: UIControl.Event.touchUpInside)
        XCTAssertEqual(vc.textLabel.text, "Oke")
        
    }

    
    

}
