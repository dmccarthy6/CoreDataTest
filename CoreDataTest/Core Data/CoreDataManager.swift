//  Created by Dylan  on 9/30/20.

import CoreData

typealias CoreDataAPI = ReadFromCoreData & WriteToCoreData
final class CoreDataManager {
    // MARK: - Properties
    static var sharedDatabase = CoreDataManager()
    
    let context = CoreDataStack.shared.mainThreadContext
    
    /*
     This is a pretty good article on setting up the relationships - it's pretty in depth but looks very similar to what you're trying to do
     
     https://medium.com/@aliakhtar_16369/mastering-in-coredata-part-5-relationship-between-entities-in-core-data-b8fea1b50efb
     
     I'll help you in any way I can!
     
     */
    
    func example() {
        // What you'll end up doing is accessing the 'stuents' through the Supervisor, and then the student's tasks through the student.
        // Since you will only be adding students to the supervisor they are associated with, by using these methods you can
        
        let supervisor = Supervisor(context: context)
        
        // Once you have the supervisor value (above) you can access their students. In CoreData they're set up as NSSet values - you can cast as the correct value, here an array of 'Students'
        let supervisorStudents = supervisor.student
        
        for student in supervisorStudents {
            let studentTasks = student.tasks
        }
    }
}
