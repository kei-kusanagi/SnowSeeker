//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Juan Carlos Robledo Morales on 13/12/24.
//

import SwiftUI


@Observable
class Player {
    var name = "Anonymous"
    var highScore = 0
}


struct HighScoreView: View {
    @Environment(Player.self) var player

    var body: some View {
        @Bindable var player = player

        return Stepper("High score: \(player.highScore)", value: $player.highScore)
    }
}

//struct ContentView: View {
//    @State private var player = Player()
//
//    var body: some View {
//        VStack {
//            Text("Welcome!")
//            HighScoreView(player: player)
//        }
//    }
//}

struct ContentView: View {
    @State private var player = Player()


    var body: some View {
        VStack {
            Text("Welcome!")
            HighScoreView()
        }
        .environment(player) 
    }
}



#Preview {
    ContentView()
}
