//
//  PlaceholderView.swift
//  Mini06 WatchKit Extension
//
//  Created by Luiz Araujo on 09/06/22.
//

import SwiftUI

/// As the name suggest...
struct PlaceholderView: View {
    var body: some View {
        VStack {
            Text("🚧🚧🚧🚧🚧🚧🚧🚧🚧")
                .padding()
            Text("WORK IN PROGRESS")
            Text(messagesForPlaceholderView.randomElement()!)
                .font(.footnote)
            Text("🚧🚧🚧🚧🚧🚧🚧🚧🚧")
                .padding()
        }
        .monospacedDigit()
        .multilineTextAlignment(.center)
    }
}

struct PlaceholderView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceholderView()
    }
}

fileprivate let messagesForPlaceholderView: [String] = [
    "I am a work in progress.\n Barbra Streisand",
    "🚦 Nothing to see here...🚦",
    "Come back later 🍃",
    "🛑 Stay foot! 🛑",
    "👻 404: Page not found! 👻",
    "The road to hell is paved with works-in-progress.",
    "A work in progress. And the possibilities are endless.",
    "Life is a work in progress.\n Rachel Caine",
    "I am a work in progress dressed in the fabric of a world unfolding.\n Ani DiFranco",
    "Perfection is both innate and a work in progress.\n Rasheed Ogunlaru",
    "All creativity is a work in progress. Dean Cavanagh",
    "I'm a work in progress. I'm trying to be better.\n Nate Parker",
    "My life is just a never-ending work in progress.\n Richard Simmons",
    "We are all just a work in progress.\n Mary J. Blige",
    "I'm always a work in progress.\n Billie Joe Armstrong",
    "Views, people and relationships never stops being a work in progress.\n Nora Roberts + Me"
]
