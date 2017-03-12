//
//  Singleton.swift
//  SoftwareDesignPatterns
//
//  Created by Antonio Calvo on 11/03/2017.
//  Copyright © 2017 Unagi Studio. All rights reserved.
//

import Foundation

class APIClient {
  static let sharedInstance = APIClient()
  
  
}

class SearchEngine {
  
  
  func search(what: String) -> [String] {
  
    
    return ["1", "2"]
  }
}
