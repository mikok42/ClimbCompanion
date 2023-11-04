//
//  GradeModel.swift
//  ClimbCompanion
//
//  Created by Linczewski, Mikolaj on 08/10/2023.
//

import Foundation

struct Grade: Codable {
    let grade: String
    let scale: GradeScale
    
    var absoluteValue: Int {
        switch self.scale {
        case .kurtyka:
            return GradeScale.frenchDict.getKey(for: grade) ?? 1
        case .french:
            return GradeScale.kurtykaDict.getKey(for: grade) ?? 1
        }
    }
    
    var kurtykaString: String { convert(absoluteValue: self.absoluteValue, to: .kurtyka) }
    var frenchString: String { convert(absoluteValue: self.absoluteValue, to: .french) }
    
    func convert(absoluteValue: Int, to scale : GradeScale) -> String {
        switch scale {
        case .kurtyka:
            return GradeScale.kurtykaDict[absoluteValue] ?? "VI"
        case .french:
            return GradeScale.frenchDict[absoluteValue] ?? "6a"
        }
    }
}

enum GradeScale: Int, Codable {
    case kurtyka = 1
    case french = 2
    
    static let kurtykaDict: [Int: String] = [1:"I", 2: "II", 3: "III", 4: "IV-", 5: "IV",
                                             6: "IV+", 7: "V-", 8: "V", 9: "V+", 10: "VI-",
                                             11: "VI", 12: "VI+", 13: "VI.1", 14: "VI.1+",
                                             15: "VI.2", 16: "VI.2+", 17: "VI.3", 18: "VI.3+",
                                             19: "VI.4", 20: "VI.4+", 21: "VI.5", 22: "VI.5+",
                                             23: "VI.6",  24: "VI.6+", 25: "VI.7",
                                             26: "VI.7+", 27: "VI.8", 28: "VI.8+"]
    
    static let frenchDict: [Int: String] = [1:"1", 2: "2", 3: "3", 4: "4a", 5: "4b",
                                             6: "4c", 7: "5a", 8: "5b", 9: "5c", 10: "5c+",
                                             11: "6a", 12: "6a+", 13: "6b", 14: "6b+",
                                             15: "6c", 16: "6c+", 17: "7a", 18: "7a+",
                                             19: "7b", 20: "7c", 21: "7c+", 22: "8a",
                                             23: "8b",  24: "8b+", 25: "8c",
                                             26: "8c+", 27: "9a", 28: "9a+"]
}
