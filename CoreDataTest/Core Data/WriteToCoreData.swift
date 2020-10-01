//  Created by Dylan  on 9/30/20.

import CoreData

protocol WriteToCoreData {
    var mainThreadContext: NSManagedObjectContext { get }
    
    func save(context: NSManagedObjectContext)
    func saveObject<T: NSManagedObject>(object: T, inContext: NSManagedObjectContext)
    func delete<T: NSManagedObject>(_ managedObject: T)
}
