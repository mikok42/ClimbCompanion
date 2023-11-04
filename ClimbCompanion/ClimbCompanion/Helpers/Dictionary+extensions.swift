//
//  Dictionary+extensions.swift
//  ClimbCompanion
//
//  Created by Linczewski, Mikolaj on 04/11/2023.
//

import Foundation

extension Dictionary where Value: Equatable {
    func getKey(for value: Value) -> Key? {
        return first(where: { $1 == value })?.key
    }
}
