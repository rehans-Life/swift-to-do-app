//
//  ToDo.swift
//  ToDoList
//
//  Created by user244986 on 11/30/24.
//

import Foundation

struct ToDo {
    let id = UUID()
    var title: String
    var isComplete: Bool
    var dueDate: Date
    var notes: String?
    
    static func ==(lhs: ToDo, rhs: ToDo) -> Bool {
        return lhs.id == rhs.id
    }
    
    static func loadToDos() -> [ToDo]? {
        return nil
    }
    
    static func loadSampleToDos() -> [ToDo] {
        let sampleToDos: [ToDo] = [
            ToDo(title: "Finish Swift project", isComplete: false, dueDate: Date().addingTimeInterval(86400 * 7), notes: "Complete all requirements for the iOS app"),
            ToDo(title: "Buy groceries", isComplete: false, dueDate: Date().addingTimeInterval(86400 * 2), notes: "Milk, bread, eggs, and vegetables"),
            ToDo(title: "Schedule dentist appointment", isComplete: true, dueDate: Date().addingTimeInterval(-86400), notes: "Annual check-up"),
            ToDo(title: "Prepare presentation", isComplete: false, dueDate: Date().addingTimeInterval(86400 * 10), notes: "Create slides for team meeting"),
            ToDo(title: "Call mom", isComplete: false, dueDate: Date().addingTimeInterval(86400 * 3), notes: nil)
        ]
        return sampleToDos
    }
}
