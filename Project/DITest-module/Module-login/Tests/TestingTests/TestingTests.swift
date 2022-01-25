//
//  TestingTests.swift
//  
//
//  Created by Tommy on 26/01/22.
//

import XCTest
@testable import Testing

class TestingTests: XCTestCase {

    func test_something(){
        let sut = Testing()
        XCTAssertEqual(sut.test(), "oke")
    }
    
}
