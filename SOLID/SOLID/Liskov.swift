//
//  Liskov.swift
//  SOLID
//
//  Created by Antonio Calvo on 11/03/2017.
//  Copyright © 2017 Unagi Studio. All rights reserved.
//

import Foundation


class RectangleClass: Shape {
  let identifier: String
  let width: Double
  let height: Double
  
  init(identifier: String, width: Double, height: Double) {
    self.identifier = identifier
    self.width = width
    self.height = height
  }
  
  var area: Double { return abs(width * height) }
}

// Bad implementation
// Si cambiamos la priopiedad heredada de Rectangle cambia y deja de cumplir el contrato

class Square: RectangleClass {
  let side: Double
  
  init(identifier: String, side: Double) {
    self.side = side
    super.init(identifier: identifier, width: side, height: side)
  }
}

// No usar herencia ya que nos follamos el principio de sustitucion de Liskov

class SquareSolution: Shape {
  let identifier: String
  let size: Double
  
  init(identifier: String, size: Double) {
    self.identifier = identifier
    self.size = size
  }
  
  var area: Double { return size * size }
}
