//
//  Dependency.swift
//  SOLID
//
//  Created by Antonio Calvo on 11/03/2017.
//  Copyright © 2017 Unagi Studio. All rights reserved.
//

import Foundation

// Esta solucion es un poco de sobre ingeniería revisar la solucion de Pedro
// No tiene sentido añadir el protocolo y modificar el código de todas las
// las clases. Dictionario con Identifier (String) + Shape, normalmente los 
// objetos construidos en memoria no interesa tener id en el objeto

protocol Identifiable {
  var identifier: String { get }
}


struct Storage {
  var items: [Identifiable]
  
  func put(item: Identifiable) {
    
  }
  
  func get(identifier: String) -> Identifiable? {
    return items.filter({ (item) -> Bool in
      item.identifier == identifier
    }).first
  }
}

// Solution




