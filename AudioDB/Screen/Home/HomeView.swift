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
    private let width = Constants.sizes.screenWidth
    private let percentageForMainMenu = CGFloat(0.397196)
    private let percentageForLists = CGFloat(0.317757)
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack {
                    // MARK: Choose
                    Text("Choose what you want to do now:")
                        .accessibilityIdentifier("textChoose")
                        .font(.system(.largeTitle, design: .rounded))
                        .padding(.top, Constants.sizes.largeSpace)
                        .padding(.leading, Constants.sizes.mediumSpace)
                    HStack {
                        Spacer()
                        NavigationLink(destination: Text("titleListView")) {
                            Cardfy(sfSymbol: mainMenuOptions[0].image,
                                   text: mainMenuOptions[0].text,
                                   id: mainMenuOptions[0].id, width: width * percentageForMainMenu)
                            .font(.largeTitle)
                        }
                        Spacer()
                        NavigationLink(destination: Text("titleListView")) {
                            Cardfy(sfSymbol: mainMenuOptions[1].image,
                                   text: mainMenuOptions[1].text,
                                   id: mainMenuOptions[1].id, width: width * percentageForMainMenu)
                            .font(.largeTitle)
                        }
                        Spacer()
                    }
                    // MARK: Favorites
                    HStack {
                        Text("Favorites")
                            .accessibilityIdentifier("labelFavorites")
                            .font(Constants.texts.secondaryText)
                        Spacer()
                    }
                    .padding(.top, Constants.sizes.mediumSpace)
                    .padding(.leading, Constants.sizes.mediumSpace)
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(favorites, id: \.id) { fav in
                                Cardfy(sfSymbol: fav.image,
                                       text: fav.text,
                                       id: fav.id,
                                       width: width * percentageForLists)
                            }
                        }
                    }
                    .accessibilityIdentifier("homeFavoritesList")
                    // MARK: Categories
                    HStack {
                        Text("Categories")
                            .accessibilityIdentifier("labelCategories")
                            .font(Constants.texts.secondaryText)
                        Spacer()
                    }
                    .padding(.top, Constants.sizes.mediumSpace)
                    .padding(.leading, Constants.sizes.mediumSpace)
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(categories, id: \.id) { cat in
                                Cardfy(sfSymbol: cat.image,
                                       text: cat.text,
                                       id: cat.id,
                                       width: width * percentageForLists)
                            }
                        }
                    }
                    .accessibilityIdentifier("homeCategoriesList")
                }
            }
            .navigationTitle("Home")
            .background(Color.backgroundColor)
            .background(Color.textColor)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(mainMenuOptions: favoritesMemes, favorites: mainMenuOptions, categories: categoriesMemes)
            .preferredColorScheme(.light)
    }
}
