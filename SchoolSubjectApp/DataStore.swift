//
//  DataStore.swift
//  SchoolSubjectApp
//
//  Created by Vaishakh on 5/28/17.
//  Copyright © 2017 Vaishakh. All rights reserved.
//

import Foundation
import CoreData

class DataStore {
    static let sharedInstance = DataStore()
    lazy var coredataManager = CoreDataManager.sharedInstance
    var subjectList = [SubjectList]()
    
    func readAllSubjects() -> [SubjectList] {
        let fecthRequest: NSFetchRequest<SubjectList> = SubjectList.fetchRequest()
        let sortDescription = NSSortDescriptor.init(key: "bookname", ascending: true)
        //let predicate = NSPredicate(format: "category == %@", category)
        //fecthRequest.predicate predicate
        fecthRequest.sortDescriptors = [sortDescription]
        do {
           let subjectList = try coredataManager.managedObjectContext.fetch(fecthRequest)
            if (subjectList.count > 0) {
                self.subjectList = subjectList
            }
        } catch {
            //self.subjectList = []
        }
        return self.subjectList
    }
    
    
    func addSubject(subjectName: String, subjectDescription: String, subjectImage: NSData) {
        let addNewSubject = SubjectList(context: coredataManager.managedObjectContext)
        addNewSubject.bookname =  subjectName
        addNewSubject.bookcoverimage = nil
    }
    
    func deleteSubject(subjectManagedObject: NSManagedObject) {
        
    }
}
