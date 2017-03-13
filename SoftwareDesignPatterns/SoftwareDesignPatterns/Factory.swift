//
//  Factory.swift
//  SoftwareDesignPatterns
//
//  Created by Antonio Calvo on 11/03/2017.
//  Copyright © 2017 Unagi Studio. All rights reserved.
//

import Foundation


class Developer {
  let name: String

  init(name: String) {
    self.name = name
  }
}

class Employee: Developer {
  let daysOff: Int
  
  init(name: String, daysOff: Int) {
    self.daysOff = daysOff
    super.init(name: name)
  }
}

class Founder: Developer {
  let extraDaysOff: Int
  
  init(name: String, extraDaysOff: Int) {
    self.extraDaysOff = extraDaysOff
    super.init(name: name)
  }
}

class KarumiFactory {
  func makeEmployee(name: String, daysOff: Int) -> Developer {
    return Employee(name: name, daysOff: daysOff)
  }
  
  func makeFounder(name: String, extraDaysOff: Int) -> Developer {
    return Founder(name: name, extraDaysOff: 20)
  }
}
