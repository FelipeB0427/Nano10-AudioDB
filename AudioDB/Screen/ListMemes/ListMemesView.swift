//
//  ListMemesView.swift
//  AudioDB
//
//  Created by Luiz Araujo on 23/07/22.
//

import SwiftUI

struct ListMemesView: View {
    var body: some View {
        Text("List Of MEMES")
            .accessibilityIdentifier("ListMemesView-title")
    }
}

struct ListMemesView_Previews: PreviewProvider {
    static var previews: some View {
        ListMemesView()
    }
}
