//
//  MainMenuButtonView.swift
//  AudioDB
//
//  Created by Luiz Araujo on 20/07/22.
//

import SwiftUI

struct MainMenuButtonView: View {
    let sfSymbol: String
    let text: String
    let id: String
    let width: CGFloat
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: Constants.sizes.cornerRadius)
                .accessibilityIdentifier("\(id)Background")
                .foregroundStyle(.ultraThickMaterial)
                .frame(width: width, height: width * 1.3)
            VStack {
                Image(systemName: sfSymbol)
                    .accessibilityIdentifier("\(id)Emoji")
                .foregroundColor(.red)
                Text(text)
                    .accessibilityIdentifier("\(id)Label")
                    .foregroundColor(.red)
            }
        }.overlay(
            RoundedRectangle(cornerRadius: Constants.sizes.cornerRadius)
                .stroke(.yellow, lineWidth: 5)
        )
    }
}

struct MainMenuButtonView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainMenuButtonView(sfSymbol: "face.smiling.fill", text: "Blabla", id: "TextID", width: 200.0)
                .preferredColorScheme(.light)
            MainMenuButtonView(sfSymbol: "face.smiling.fill", text: "Blabla", id: "TextID", width: 200.0)
                .preferredColorScheme(.dark)
        }
    }
}
