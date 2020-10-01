//
//  Supervisor+CoreDataProperties.swift
//  CoreDataTest
//
//  Created by Dylan  on 9/30/20.
//
//

import Foundation
import CoreData


extension Supervisor {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Supervisor> {
        return NSFetchRequest<Supervisor>(entityName: "Supervisor")
    }

    @NSManaged public var firstName: String?
    @NSManaged public var lastName: String?
    @NSManaged public var supervisorID: String?
    @NSManaged public var student: [Student]

}

// MARK: Generated accessors for student
extension Supervisor {

    @objc(addStudentObject:)
    @NSManaged public func addToStudent(_ value: Student)

    @objc(removeStudentObject:)
    @NSManaged public func removeFromStudent(_ value: Student)

    @objc(addStudent:)
    @NSManaged public func addToStudent(_ values: NSSet)

    @objc(removeStudent:)
    @NSManaged public func removeFromStudent(_ values: NSSet)

}

extension Supervisor : Identifiable {

}
