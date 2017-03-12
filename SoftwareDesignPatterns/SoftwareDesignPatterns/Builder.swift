//
//  Builder.swift
//  SoftwareDesignPatterns
//
//  Created by Antonio Calvo on 11/03/2017.
//  Copyright © 2017 Unagi Studio. All rights reserved.
//

import Foundation

// Es muy sencillo crear objetos usando init y valores por defecto, no es necesario apoyarse en otra clase

struct APIClientConfig {
  let schema: String
  let port: Int
  
  init(schema: String = "http", port: Int = 80) {
    self.schema = schema
    self.port = port
  }
}


// Example

class DeathStarBuilder {
  
  var x: Double?
  var y: Double?
  var z: Double?
  
  typealias BuilderClosure = (DeathStarBuilder) -> ()
  
  init(buildClosure: BuilderClosure) {
    buildClosure(self)
  }
}

struct DeathStar : CustomStringConvertible {
  
  let x: Double
  let y: Double
  let z: Double
  
  init?(builder: DeathStarBuilder) {
    
    if let x = builder.x, let y = builder.y, let z = builder.z {
      self.x = x
      self.y = y
      self.z = z
    } else {
      return nil
    }
  }
  
  var description:String {
    return "Death Star at (x:\(x) y:\(y) z:\(z))"
  }
}
