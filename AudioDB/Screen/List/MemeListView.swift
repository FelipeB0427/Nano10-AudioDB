//
//  MemeListView.swift
//  AudioDB
//
//  Created by Gustavo da Silva Braghin on 21/07/22.
//

import SwiftUI

struct MemeListView: View {
    var body: some View {
        NavigationView {
            List {
                MemesRowModel(imageName: "person.fill.questionmark", title: "Celemeterio")
                MemesRowModel(imageName: "person.fill.questionmark", title: "Celemeterio")
                MemesRowModel(imageName: "person.fill.questionmark", title: "Celemeterio")
            }
            .navigationTitle("Memes")
            .accessibilityIdentifier("MemeList")
        }
    }
}

struct MemeListView_Previews: PreviewProvider {
    static var previews: some View {
        MemeListView()
    }
}
