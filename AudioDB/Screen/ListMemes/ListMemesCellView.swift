//
//  ListMemesCellView.swift
//  AudioDB
//
//  Created by Luiz Araujo on 24/07/22.
//

import SwiftUI

struct ListMemesCellView: View {
    let meme: Meme
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: Constants.sizes.cornerRadius)
                .accessibilityIdentifier("\(meme.id)Background")
                .foregroundColor(.black)
//                .frame(width: width, height: width * Constants.sizes.proportionHeightForCards)
            HStack {
                // Image
                AsyncImage(url: meme.url,
                           content: { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxHeight: Constants.sizes.screenWidth * 0.245327)
                },
                           placeholder: {
                    ProgressView()
                })
                .accessibilityIdentifier("\(meme.id)Emoji")
                // Label for the Card
                Text(meme.name)
                    .multilineTextAlignment(.center)
                    .accessibilityIdentifier("\(meme.id)Label")
                    .foregroundColor(.white)
                    .font(Constants.texts.bodyText)
                    .lineLimit(2)
//                    .frame(maxWidth: width * 0.8, maxHeight: width * 0.25)
                HStack {
                    Image(systemName: "square.and.arrow.up")
                    Image(systemName: meme.isFavorite ? "star.fill" : "star.slash")
                    Image(systemName: "square.and.pencil")
                }
                .multilineTextAlignment(.center)
                .accessibilityIdentifier("\(meme.id)Label")
                .foregroundColor(.white)
                .font(Constants.texts.bodyText)
                .lineLimit(2)
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: Constants.sizes.cornerRadius))
        .overlay(
            RoundedRectangle(cornerRadius: Constants.sizes.cornerRadius)
                .stroke(Color.primaryColor, lineWidth: Constants.sizes.linedWidth)
        )
    }
}

struct ListMemesCellView_Previews: PreviewProvider {
    static var previews: some View {
        ListMemesCellView(meme: Meme.memeStub)
    }
}
