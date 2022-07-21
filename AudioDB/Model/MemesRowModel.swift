//
//  MemesRowModel.swift
//  AudioDB
//
//  Created by Gustavo da Silva Braghin on 21/07/22.
//

import SwiftUI

struct MemesRowModel: View {
    let imageName: String
    let title: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
            Text(title)
            Spacer()
            Button {
                print("share")
            } label: {
                Image(systemName: "square.and.arrow.up")
            }
            Button {
                print("favorite")
            } label: {
                Image(systemName: "star")
            }
        }
    }
}

struct MemesRowModel_Previews: PreviewProvider {
    static var previews: some View {
        MemesRowModel(imageName: "person.fill.questionmark", title: "Celemeterio")
    }
}
