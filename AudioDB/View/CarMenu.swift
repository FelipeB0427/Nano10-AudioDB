//
//  CarMenu.swift
//  AudioDB
//
//  Created by Luiz Araujo on 22/07/22.
//

import SwiftUI

struct CarMenu: View {
    let memeData: MainMenuOptionsModel
    let width: CGFloat
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: Constants.sizes.cornerRadius)
                .accessibilityIdentifier("\(memeData.id)Background")
                .foregroundColor(.black)
                .frame(idealWidth: width * 0.9, idealHeight: width * Constants.sizes.proportionHeightForCards)
            VStack {
                // Image
                Image(systemName: memeData.image)
                    .accessibilityIdentifier("\(memeData.id)Emoji")
                    .foregroundColor(.white)
                    .font(.system(size: width * 0.558824))
                // Label for the Card
                Text(memeData.text)
                    .accessibilityIdentifier("\(memeData.id)Label")
                    .foregroundColor(.white)
                    .font(Constants.texts.secondaryText)
            }
        }.overlay(
            RoundedRectangle(cornerRadius: Constants.sizes.cornerRadius)
                .stroke(Color.primaryColor, lineWidth: Constants.sizes.linedWidth)
        )
    }
}

struct CarMenuView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CarMenu(memeData: mainMenuOptions[0], width: 200.0)
                .preferredColorScheme(.light)
            CarMenu(memeData: mainMenuOptions[0], width: 200.0)
                .preferredColorScheme(.dark)
        }
        .previewInterfaceOrientation(.portrait)
    }
}
