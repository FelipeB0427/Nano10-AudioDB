//
//  CardCategory.swift
//  AudioDB
//
//  Created by Luiz Araujo on 23/07/22.
//
//

import SwiftUI

struct CardCategory: View {
    let category: MemeCategory
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: Constants.sizes.cornerRadius)
                .accessibilityIdentifier("\(category.id)BackgroundMemeCategory")
                .foregroundColor(.black)
            // Label for the Card
            Text(category.id)
                .multilineTextAlignment(.center)
                .accessibilityIdentifier("\(category.id)LabelMemeCategory")
                .foregroundColor(.white)
                .font(Constants.texts.bodyText)
                .lineLimit(1)
//                .scaledToFit()
        }
        .clipShape(RoundedRectangle(cornerRadius: Constants.sizes.cornerRadius))
        .overlay(
            RoundedRectangle(cornerRadius: Constants.sizes.cornerRadius)
                .stroke(Color.primaryColor, lineWidth: Constants.sizes.linedWidth)
        )
    }
}

struct CardCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CardCategory(category: MemeCategory(id: "Bla bla bla", isSelected: false))
                .preferredColorScheme(.light)
            CardCategory(category: MemeCategory(id: "Hot Blink", isSelected: true))
                .preferredColorScheme(.dark)
        }
        .previewInterfaceOrientation(.portrait)
    }
}
