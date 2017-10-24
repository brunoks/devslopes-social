//
//  Item+CoreDataProperties.swift
//  DreamLister
//
//  Created by Bruno Vieira on 18/10/17.
//  Copyright © 2017 Bruno Vieira. All rights reserved.
//
//

import Foundation
import CoreData


extension Item {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Item> {
        return NSFetchRequest<Item>(entityName: "Item")
    }

    @NSManaged public var Created: NSDate?
    @NSManaged public var Details: String?
    @NSManaged public var Price: Double
    @NSManaged public var Title: String?
    @NSManaged public var ToImage: Image?
    @NSManaged public var ToItemType: ItemType?
    @NSManaged public var ToStore: Store?

}
