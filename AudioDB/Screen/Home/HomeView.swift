//
//  HomeView.swift
//  AudioDB
//
//  Created by Luiz Araujo on 20/07/22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var memeManager: MemeManager  
    private let width = Constants.sizes.screenWidth
    private let percentageForMainMenu = CGFloat(0.397196)
    private let percentageForLists = CGFloat(0.317757)
    var body: some View {
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
                        NavigationLink(destination: ListMemesView().accessibilityIdentifier("HomeView-titleListView")) {
                            CarMenu(memeData: mainMenuOptions[0], width: width * percentageForMainMenu)
                            .font(.largeTitle)
                        }
                        .accessibilityIdentifier("navButtonMemes")
                        Spacer()
                        NavigationLink(destination: ListMemesView().accessibilityIdentifier("HomeView-titleListView2")) {
                            CarMenu(memeData: mainMenuOptions[1], width: width * percentageForMainMenu)
                            .font(.largeTitle)
                        }
                        .accessibilityIdentifier("navButtonGenerate")
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
                            ForEach(memeManager.memes, id: \.id) { fav in
                                CardMemes(memeData: fav, width: width * percentageForLists)
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
                            ForEach(memeManager.categories, id: \.id) { cat in
                                CardCategory(category: cat)
                            }
                        }
                    }
                    .accessibilityIdentifier("homeCategoriesList")
                }
                .padding()
            }
            .onAppear {
                Task { await memeManager.fetchAllMemes() }
            }
            .background(Color.backgroundColor)
            .background(Color.textColor)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.light)
    }
}
