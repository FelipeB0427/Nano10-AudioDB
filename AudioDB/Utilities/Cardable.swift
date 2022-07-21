//
//  Cardable.swift
//  AudioDB
//
//  Created by Luiz Araujo on 20/07/22.
//

import Foundation

protocol Cardable: Identifiable {
    var image: String { get }
    var text: String { get }
}
