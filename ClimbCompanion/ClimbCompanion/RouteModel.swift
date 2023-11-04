//
//  Item.swift
//  ClimbCompanion
//
//  Created by Linczewski, Mikolaj on 08/10/2023.
//

import Foundation
import SwiftData

@Model
final class RouteModel {
    internal init(name: String, authors: [String], settingDate: Date, grade: Grade) {
        self.name = name
        self.authors = authors
        self.settingDate = settingDate
        self.grade = grade
    }
    
    let name: String
    let authors: [String]
    let settingDate: Date
    let grade: Grade
}



