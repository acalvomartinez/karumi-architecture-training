//
//  Single.swift
//  SOLID
//
//  Created by Antonio Calvo on 10/03/2017.
//  Copyright © 2017 Unagi Studio. All rights reserved.
//

import Foundation

protocol Shape: Identifiable {
  var area: Double { get }
}

struct Circle: Shape {
  let identifier: String
  var radius: Double
  
  var area: Double { return M_PI * pow(radius, 2) }
}

struct Rectangle: Shape {
  let identifier: String
  var width: Double
  var height: Double
  
  var area: Double { return abs(width * height) }
}

struct AreaCalculator {
  public func sum(_ shapes: [Shape]) -> Double {
    return shapes.reduce(0, { (result, shape) -> Double in
      result + shape.area
    })
  }
}

// Review...

protocol PrettyPrinter {
  func prettyPrint(content: Double) -> String
}

struct HTMLPrettyPrint: PrettyPrinter {
  func prettyPrint(content: Double) -> String {
    return "<html>\(content)</html>"
  }
}

struct JSONPrettyPrint: PrettyPrinter {
  func prettyPrint(content: Double) -> String {
    return "{ 'area_sum': '\(content)' }"
  }
}

struct PlainPrettyPrinter {
  let areaCalculator: AreaCalculator
  
  func prettyPrint(shapes: [Shape]) -> String {
    return "\(areaCalculator.sum(shapes))"
  }
}

















