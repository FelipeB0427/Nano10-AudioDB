//
//  HomeView.swift
//  AudioDB
//
//  Created by Luiz Araujo on 20/07/22.
//

import SwiftUI

struct HomeView: View {
    let mainMainMenuOptions = mainMenuOptions
    var body: some View {
        VStack {
            // MARK: Welcom
            Text("Hello, there!")
                .accessibilityIdentifier("welcome")
            
            // MARK: Choose
            Text("Choose what you want to do now:")
                .accessibilityIdentifier("textChoose")
            HStack {
                MainMenuButton(sfSymbol: mainMainMenuOptions[0].image,
                               text: mainMainMenuOptions[0].text,
                               id: mainMainMenuOptions[0].id)
                MainMenuButton(sfSymbol: mainMainMenuOptions[1].image,
                               text: mainMainMenuOptions[1].text,
                               id: mainMainMenuOptions[1].id)
            }.padding()
            
            // MARK: Favorites
            Text("Favorites")
                .accessibilityIdentifier("labelFavorites")
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct MainMenuButton: View {
    let sfSymbol: String
    let text: String
    let id: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .accessibilityIdentifier("\(id)Background")
            VStack {
                Image(systemName: sfSymbol)
                    .accessibilityIdentifier("\(id)Emoji")
                .foregroundColor(.red)
                Text(text)
                    .accessibilityIdentifier("\(id)Label")
                    .foregroundColor(.red)
            }
        }
    }
}
