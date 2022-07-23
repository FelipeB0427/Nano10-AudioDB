//
//  String+Extension.swift
//  AudioDB
//
//  Created by Luiz Araujo on 23/07/22.
//

import Foundation

extension String {
    public static func toURL() -> URL {
        return URL(string: "\(self)")!
    }
}
