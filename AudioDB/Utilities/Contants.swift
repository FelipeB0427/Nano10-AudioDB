//
//  Contants.swift
//  AudioDB
//
//  Created by Luiz Araujo on 21/07/22.
//

import CoreGraphics
import UIKit
import SwiftUI

struct Constants {
    static let sizes = ConstantsSizes()
    struct ConstantsSizes {
        // MARK: Sizes
        let screenSize   = UIScreen.main.bounds.size
        let screenWidth  = UIScreen.main.bounds.size.width
        // MARK: Visual Elements
        let cornerRadius = CGFloat(30)
        let linedWidth   = CGFloat(5)
        // Proportions
        let proportionHeightForCards = CGFloat(1.2)
        // MARK: Spaces
        let largeSpace  = CGFloat(UIScreen.main.bounds.size.width * 0.016355)
        let mediumSpace = CGFloat(UIScreen.main.bounds.size.width * 0.007009)
        let smallSpace  = CGFloat(UIScreen.main.bounds.size.width * 0.002336)
    }
    static let texts = ConstantsTexts()
    struct ConstantsTexts {
        let mainText = Font.system(.largeTitle, design: .rounded)
        let secondaryText = Font.system(.title, design: .rounded)
        let bodyText = Font.system(.body, design: .rounded)
    }
    static let memeGenerator = ConstantsMemeGenerator()
    struct ConstantsMemeGenerator {
        let getAllMemes = "https://api.imgflip.com/get_memes"
    }
}
