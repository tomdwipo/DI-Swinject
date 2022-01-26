//
//  GoTests.swift
//  
//
//  Created by Tommy on 26/01/22.
//

import XCTest
@testable import PresentationGo

class GoTests: XCTestCase {

    @available(iOS 13.0, *)
    func test_goVC(){
        let vc = SetupGo.goViewController
        vc.loadViewIfNeeded()

        XCTAssertEqual(vc.textLabel.text, "default")
        vc.button.sendActions(for: UIControl.Event.touchUpInside)
        
    }
    
  
}


