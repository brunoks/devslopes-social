//
//  ItemType+CoreDataProperties.swift
//  DreamLister
//
//  Created by Bruno Vieira on 18/10/17.
//  Copyright © 2017 Bruno Vieira. All rights reserved.
//
//

import Foundation
import CoreData


extension ItemType {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ItemType> {
        return NSFetchRequest<ItemType>(entityName: "ItemType")
    }

    @NSManaged public var Type: String?
    @NSManaged public var ToItem: Item?

}
