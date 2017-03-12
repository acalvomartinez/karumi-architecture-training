//
//  RectangleTests.swift
//  SOLID
//
//  Created by Antonio Calvo on 10/03/2017.
//  Copyright © 2017 Unagi Studio. All rights reserved.
//

import XCTest
@testable import SOLID
class RectangleTests: XCTestCase {
    
    func testAreaIsOneWithWidthAndHeightOne() {
        // Arrange - Given
        let rect = Rectangle(width: 1, height: 1)
        // Act - When
        let area = rect.area
        // Assert - Then
        XCTAssert(area == 1.0, "Area should be 1.0")
    }
    
    func testAreaIsFourWithWidthAndHeightTwo() {
        let rect = Rectangle(width: 2, height: 2)
        
        let area = rect.area
        
        XCTAssert(area == 4.0, "Area should be 4.0")
    }
    
    func testAreaIsEightWithWidthTwoAndHeightFour() {
        let rect = Rectangle(width: 2, height: 4)
        
        let area = rect.area
        
        XCTAssert(area == 8.0, "Area should be 8.0")
    }
    
    func testAreaIsEightWithWidthNegativeTwoAndHeightNegativeFour() {
        let rect = Rectangle(width: -2, height: 4)
        
        let area = rect.area
        
        XCTAssert(area == 8.0, "Area should be 8.0")
    }
}
