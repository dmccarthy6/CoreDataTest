//
//  Student+CoreDataProperties.swift
//  CoreDataTest
//
//  Created by Dylan  on 9/30/20.
//
//

import Foundation
import CoreData


extension Student {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student")
    }

    @NSManaged public var firstName: String?
    @NSManaged public var lastName: String?
    @NSManaged public var studentID: String?
    @NSManaged public var supervisor: Supervisor?
    @NSManaged public var tasks: [Tasks]?

}

// MARK: Generated accessors for tasks
extension Student {

    @objc(addTasksObject:)
    @NSManaged public func addToTasks(_ value: Student)

    @objc(removeTasksObject:)
    @NSManaged public func removeFromTasks(_ value: Student)

    @objc(addTasks:)
    @NSManaged public func addToTasks(_ values: NSSet)

    @objc(removeTasks:)
    @NSManaged public func removeFromTasks(_ values: NSSet)

}

extension Student : Identifiable {

}
