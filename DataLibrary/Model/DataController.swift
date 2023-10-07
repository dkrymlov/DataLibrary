//
//  DataController.swift
//  DataLibrary
//
//  Created by Даниил Крымлов on 30.09.2023.
//

import Foundation
import CoreData

class DataController : ObservableObject{
    let container = NSPersistentContainer(name: "DataLibrary")
    
    init(){
        
        container.loadPersistentStores{ description, err in
            if let err = err {
                print(err.localizedDescription)
            }
        }
        
    }
}
