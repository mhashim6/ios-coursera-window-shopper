//
//  coursera_window_shopperTests.swift
//  coursera_window_shopperTests
//
//  Created by Muhammad Hashim on 1/19/20.
//  Copyright © 2020 Muhammad Hashim. All rights reserved.
//

import XCTest
@testable import coursera_window_shopper

class coursera_window_shopperTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testGetHours() {
        XCTAssert(getHours(forWage: 25, andPrice: 100) == 4)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
