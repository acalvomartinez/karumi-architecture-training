//
//  ObjectMother.swift
//  SoftwareDesignPatterns
//
//  Created by Antonio Calvo on 11/03/2017.
//  Copyright © 2017 Unagi Studio. All rights reserved.
//

import Foundation


protocol Shape {
  var area: Double { get }
}

struct Circle: Shape {
  
  var radius: Double
  
  var area: Double { return M_PI * pow(radius, 2) }
}

struct Rectangle: Shape {
  var width: Double
  var height: Double
  
  var area: Double { return abs(width * height) }
}

class ShapesMother {
  static func anyCircle() -> Shape {
    let circle = Circle(radius: 20)
    return circle
  }
  
  static func rectangle(width: Double = 20.0, height: Double = 30.0) -> Shape {
    let rectangle = Rectangle(width: width, height: height)
    return rectangle
  }
}
