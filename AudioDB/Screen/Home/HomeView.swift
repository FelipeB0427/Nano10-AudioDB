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
    let ksajbdkabsldjablsd = CGFloat(200.0)
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack {
                    // MARK: Welcome
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
                        NavigationLink(destination: PlaceholderView()) {
                            MainMenuButtonView(sfSymbol: mainMenuOptions[0].image,
                                           text: mainMenuOptions[0].text,
                                               id: mainMenuOptions[0].id, width: ksajbdkabsldjablsd)
                                .font(.largeTitle)
                            .frame(width: 200, height: 250)
                        }
                        NavigationLink(destination: PlaceholderView()) {
                            MainMenuButtonView(sfSymbol: mainMenuOptions[1].image,
                                           text: mainMenuOptions[1].text,
                                           id: mainMenuOptions[1].id, width: ksajbdkabsldjablsd)
                            .font(.largeTitle)
                            .frame(width: 200, height: 250)
                        }
                        .navigationTitle("Home")
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
                                MainMenuButtonView(sfSymbol: fav.image,
                                                   text: fav.text,
                                                   id: fav.id,
                                                   width: ksajbdkabsldjablsd)
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
                                MainMenuButtonView(sfSymbol: fav.image,
                                                   text: fav.text, id:
                                                   fav.id,
                                                   width: ksajbdkabsldjablsd)
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
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(mainMenuOptions: favoritesMemes, favorites: mainMenuOptions, categories: categoriesMemes)
//            .en
    }
}
