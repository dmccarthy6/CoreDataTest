//
//  Tasks+CoreDataProperties.swift
//  CoreDataTest
//
//  Created by Dylan  on 9/30/20.
//
//

import Foundation
import CoreData


extension Tasks {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Tasks> {
        return NSFetchRequest<Tasks>(entityName: "Tasks")
    }

    @NSManaged public var taskName: String?
    @NSManaged public var student: Tasks?

}

extension Tasks : Identifiable {

}
