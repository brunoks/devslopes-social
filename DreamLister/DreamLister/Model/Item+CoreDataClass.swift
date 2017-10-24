//
//  Item+CoreDataClass.swift
//  DreamLister
//
//  Created by Bruno Vieira on 18/10/17.
//  Copyright © 2017 Bruno Vieira. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Item)
public class Item: NSManagedObject {
    
    public override func awakeFromInsert() {
        super.awakeFromInsert()
        self.created = NSDate()
    }

}
