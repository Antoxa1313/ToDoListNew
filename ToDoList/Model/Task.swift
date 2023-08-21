//
//  Task.swift
//  ToDoList
//
//  Created by Anton Nepotenko on 2023-08-13.
//

import Foundation

struct Task:Codable {
    var title: String
    var description: String
    var deadline: Date
    var status: String
}
