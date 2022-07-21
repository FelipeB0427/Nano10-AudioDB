//
//  Cardfy.swift
//  AudioDB
//
//  Created by Luiz Araujo on 20/07/22.
//

import SwiftUI

struct Cardfy: View {
    let sfSymbol: String
    let text: String
    let id: String
    let width: CGFloat
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: Constants.sizes.cornerRadius)
                .accessibilityIdentifier("\(id)Background")
                .foregroundColor(.black)
                .frame(width: width, height: width * Constants.sizes.proportionHeightForCards)
            VStack {
                // Image
                Image(systemName: sfSymbol)
                    .accessibilityIdentifier("\(id)Emoji")
                    .foregroundColor(.white)
                    .font(.system(size: width * 0.558824))
                // Label for the Card
                Text(text)
                    .accessibilityIdentifier("\(id)Label")
                    .foregroundColor(.white)
                    .font(Constants.texts.secondaryText)
            }
        }.overlay(
            RoundedRectangle(cornerRadius: Constants.sizes.cornerRadius)
                .stroke(Color.primaryColor, lineWidth: Constants.sizes.linedWidth)
        )
    }
}

struct MainMenuButtonView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Cardfy(sfSymbol: "face.smiling.fill", text: "Blabla", id: "TextID", width: 200.0)
                .preferredColorScheme(.light)
            Cardfy(sfSymbol: "face.smiling.fill", text: "Blabla", id: "TextID", width: 200.0)
                .preferredColorScheme(.dark)
        }
        .previewInterfaceOrientation(.portrait)
    }
}
