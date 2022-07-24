//
//  MemeCategory.swift
//  AudioDB
//
//  Created by Luiz Araujo on 23/07/22.
//

struct MemeCategory: Equatable {
    let id: String
    var isSelected: Bool
    static public func == (lhs: MemeCategory, rhs: MemeCategory) -> Bool {
        (lhs.id == rhs.id)
    }
}
