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
  func getEmployee(name: String) -> Developer {
    return Employee(name: name, daysOff: 10)
  }
  
  func getFounder(name: String) -> Developer {
    return Founder(name: name, extraDaysOff: 20)
  }
}
