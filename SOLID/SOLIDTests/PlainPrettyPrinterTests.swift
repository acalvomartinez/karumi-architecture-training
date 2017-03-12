//
//  PlainPrettyPrinterTests.swift
//  SOLID
//
//  Created by Antonio Calvo on 10/03/2017.
//  Copyright © 2017 Unagi Studio. All rights reserved.
//

import XCTest
@testable import SOLID
class PlainPrettyPrinterTests: XCTestCase {
    var plainPrettyPrinter: PlainPrettyPrinter!
    
    override func setUp() {
        super.setUp()
        
        plainPrettyPrinter = PlainPrettyPrinter(areaCalculator: AreaCalculator())
    }
    
    func testShowsTheAreaAsString() {
        let rect = Rectangle(width: 2, height: 4)
        
        let result = plainPrettyPrinter.prettyPrint(shapes: [rect])
        
        XCTAssert(result == "8.0", "")
    }
}
