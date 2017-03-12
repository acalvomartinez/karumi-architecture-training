//
//  InterfaceSegregation.swift
//  SOLID
//
//  Created by Antonio Calvo on 11/03/2017.
//  Copyright © 2017 Unagi Studio. All rights reserved.
//

import Foundation

protocol Shape3D: Shape {
  var volumen: Double { get }
}

extension Shape3D {
  var ratio: Double { return self.area / self.volumen }
}

struct Sphere: Shape3D {
  let identifier: String
  var radius: Double
  
  var area: Double { return 4.0 * M_PI * pow(radius, 2) }
  var volumen: Double { return (4.0 / 3.0) * M_PI * pow(radius, 3) }
}
