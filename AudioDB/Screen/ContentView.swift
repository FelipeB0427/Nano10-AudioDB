//
//  ContentView.swift
//  AudioDB
//
//  Created by Gustavo da Silva Braghin on 20/07/22.
//

import SwiftUI

struct ContentView: View {
  let names = ["Felipe", "Gustavo", "Luiz", "Iorgers"]
  let colonOnWrongSide: Int = 0
  var body: some View {
    VStack {
      ForEach(names, id: \.self) { name in
        Text(name)
          .padding()
      }
      Text("Hello, Group 1!")
        .padding()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
