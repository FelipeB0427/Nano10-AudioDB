//
//  ListMemesView.swift
//  AudioDB
//
//  Created by Luiz Araujo on 23/07/22.
//

import SwiftUI

struct ListMemesView: View {
    let memes: [Meme]
    var body: some View {
        VStack{
            Text("List Of MEMES")
                .accessibilityIdentifier("ListMemesView-title")
            List() {
                ForEach(memes) { meme in
                    ListMemesCellView(meme: meme)
                }
            }
            .accessibilityIdentifier("ListMemesView-List")
        }
    }
}

struct ListMemesView_Previews: PreviewProvider {
    static var previews: some View {
        ListMemesView(memes: [Meme.memeStub, Meme.memeStub, Meme.memeStub,
                              Meme.memeStub, Meme.memeStub, Meme.memeStub,
                              Meme.memeStub, Meme.memeStub, Meme.memeStub,
                              Meme.memeStub, Meme.memeStub, Meme.memeStub])
    }
}
