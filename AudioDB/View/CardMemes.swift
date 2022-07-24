//
//  CardMemes.swift
//  AudioDB
//
//  Created by Luiz Araujo on 20/07/22.
//

import SwiftUI

struct CardMemes: View {
    let memeData: Meme
    let width: CGFloat
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: Constants.sizes.cornerRadius)
                .accessibilityIdentifier("\(memeData.id)Background")
                .foregroundColor(.black)
                .frame(width: width, height: width * Constants.sizes.proportionHeightForCards)
            VStack {
                // Image
                AsyncImage(url: memeData.url,
                           content: { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: width, maxHeight: width * 0.75)
                },
                           placeholder: {
                    ProgressView()
                })
                .accessibilityIdentifier("\(memeData.id)Emoji")
                // Label for the Card
                Text(memeData.name)
                    .multilineTextAlignment(.center)
                    .accessibilityIdentifier("\(memeData.id)Label")
                    .foregroundColor(.white)
                    .font(Constants.texts.bodyText)
                    .lineLimit(2)
                    .frame(maxWidth: width * 0.8, maxHeight: width * 0.25)
                Spacer()
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: Constants.sizes.cornerRadius))
        .overlay(
            RoundedRectangle(cornerRadius: Constants.sizes.cornerRadius)
                .stroke(Color.primaryColor, lineWidth: Constants.sizes.linedWidth)
        )
    }
}

// struct CardMemesView_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            CardMemes(memeData: mainMenuOptions[0], width: 200.0)
//                .preferredColorScheme(.light)
//            CardMemes(memeData: mainMenuOptions[0], width: 200.0)
//                .preferredColorScheme(.dark)
//        }
//        .previewInterfaceOrientation(.portrait)
//    }
// }
