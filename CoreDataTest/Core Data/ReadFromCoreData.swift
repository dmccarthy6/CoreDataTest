//  Created by Dylan  on 9/30/20.

import CoreData

protocol ReadFromCoreData {
    var predicate: NSPredicate? { get set }
    
    func configureFetchedResultsController(for entity: EntityName, key: String?, ascending: Bool) -> NSFetchedResultsController<NSFetchRequestResult>
    func fetchObjectBy<T: NSManagedObject>(_ objectID: NSManagedObjectID) -> T?
}

/*
 FYI - I made a typealias for -> NSFetchedResultsController<NSFetchRequestResult> it's easier than having to type that all the time.
 */
