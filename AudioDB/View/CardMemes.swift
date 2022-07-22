//
//  CardMemes.swift
//  AudioDB
//
//  Created by Luiz Araujo on 20/07/22.
//

import SwiftUI

struct CardMemes: View {
    let memeData: MainMenuOptionsModel
    let width: CGFloat
    var body: some View {
        ZStack {
        RoundedRectangle(cornerRadius: Constants.sizes.cornerRadius)
            .accessibilityIdentifier("\(memeData.id)Background")
            .foregroundColor(.black)
            .frame(minWidth: width * 0.5, maxWidth: width, minHeight: width * 0.5, maxHeight: width)
        VStack {
            // Image
                AsyncImage(url: URL(string: memeData.image),
                            content: { image in
                                image.resizable()
                                     .aspectRatio(contentMode: .fit)
                                     .frame(width: width, height: width)
                            },
                            placeholder: {
                                ProgressView()
                            }
                    )
                    .accessibilityIdentifier("\(memeData.id)Emoji")
            }
            // Label for the Card
            Text(memeData.text)
                .accessibilityIdentifier("\(memeData.id)Label")
                .foregroundColor(.white)
                .font(Constants.texts.secondaryText)
            
        }.overlay(
            RoundedRectangle(cornerRadius: Constants.sizes.cornerRadius)
                .stroke(Color.primaryColor, lineWidth: Constants.sizes.linedWidth)
        )
    }
}

struct CardMemesView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CardMemes(memeData: mainMenuOptions[0], width: 200.0)
                .preferredColorScheme(.light)
            CardMemes(memeData: mainMenuOptions[0], width: 200.0)
                .preferredColorScheme(.dark)
        }
        .previewInterfaceOrientation(.portrait)
    }
}
