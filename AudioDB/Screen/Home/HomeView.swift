//
//  HomeView.swift
//  AudioDB
//
//  Created by Luiz Araujo on 20/07/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("Hello, there!")
                .accessibilityIdentifier("welcome")
            Text("Choose what you want to do now:")
                .accessibilityIdentifier("textChoose")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
