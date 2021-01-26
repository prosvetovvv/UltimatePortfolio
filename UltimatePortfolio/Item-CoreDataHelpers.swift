//
//  Item-CoreDataHelpers.swift
//  UltimatePortfolio
//
//  Created by Vitaly Prosvetov on 14.01.2021.
//

import Foundation

extension Item {
    var itemTitle: String {
        title ?? "New Item"
    }
    
    var itemDetail: String {
        detail ?? ""
    }
    
    var itemCreationDate: Date {
        creationDate ?? Date()
    }
    
    static var example: Item {
        let controller = DataController(inMemory: true)
        let viewContext = controller.container.viewContext
        
        let item = Item(context: viewContext)
        item.title = "Example Item"
        item.detail = "This is example item"
        item.priority = 3
        item.creationDate = Date()
        
        return item
    }
}
