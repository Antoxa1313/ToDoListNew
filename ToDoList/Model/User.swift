//
//  File.swift
//  ToDoList
//
//  Created by Anton Nepotenko on 2023-08-13.
//

import Foundation

struct User:Codable {
    var login: String
    var password: String
    var task: [Task]?
}
