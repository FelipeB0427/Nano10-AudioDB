//
//  HomeView.swift
//  AudioDB
//
//  Created by Luiz Araujo on 20/07/22.
//

import SwiftUI

struct HomeView: View {
    let mainMenuOptions: [MainMenuOptionsModel]
    let favorites: [MainMenuOptionsModel]
    let categories: [MainMenuOptionsModel]
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                // MARK: Welcom
                HStack {
                    Text("Hello, there!")
                        .accessibilityIdentifier("welcome")
                        .font(.system(.title, design: .rounded))
                    Spacer()
                }
                .padding()
                // MARK: Choose
                Text("Choose what you want to do now:")
                    .accessibilityIdentifier("textChoose")
                    .font(.system(.largeTitle, design: .rounded))
                HStack {
                    MainMenuButton(sfSymbol: mainMenuOptions[0].image,
                                   text: mainMenuOptions[0].text,
                                   id: mainMenuOptions[0].id)
                        .font(.largeTitle)
                        .frame(width: 200, height: 250)
                    MainMenuButton(sfSymbol: mainMenuOptions[1].image,
                                   text: mainMenuOptions[1].text,
                                   id: mainMenuOptions[1].id)
                        .font(.largeTitle)
                        .frame(width: 200, height: 250)
                }.padding()
                // MARK: Favorites
                HStack {
                    Text("Favorites")
                        .accessibilityIdentifier("labelFavorites")
                    .font(.system(.title, design: .rounded))
                    Spacer()
                }
                .padding()
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(favorites, id: \.id) { fav in
                            MainMenuButton(sfSymbol: fav.image, text: fav.text, id: fav.id)
                                .font(.largeTitle)
                                .frame(width: 200, height: 200)
                        }
                    }
                }
                .accessibilityIdentifier("homeFavoritesList")
                // MARK: Categories
                HStack {
                    Text("Categories")
                        .accessibilityIdentifier("labelCategories")
                    .font(.system(.title, design: .rounded))
                    Spacer()
                }
                .padding()
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(categories, id: \.id) { fav in
                            MainMenuButton(sfSymbol: fav.image, text: fav.text, id: fav.id)
                                .font(.largeTitle)
                                .frame(width: 200, height: 200)
                        }
                    }
                }
                .accessibilityIdentifier("homeCategoriesList")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(mainMenuOptions: favoritesMemes, favorites: mainMenuOptions, categories: categoriesMemes)
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
