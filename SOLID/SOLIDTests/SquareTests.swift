//
//  SquareTests.swift
//  SOLID
//
//  Created by Antonio Calvo on 11/03/2017.
//  Copyright © 2017 Unagi Studio. All rights reserved.
//

import XCTest
@testable import SOLID
class SquareTests: XCTestCase {
    
    func testAreaIsFourWithWidthAndHeightTwo() {
        let square = Square(identifier: "2", side: 2)

        let area = square.area
        
        XCTAssertEqual(area, 4.0)
    }
}
