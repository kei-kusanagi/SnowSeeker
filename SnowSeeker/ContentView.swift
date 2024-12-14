//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Juan Carlos Robledo Morales on 13/12/24.
//

import SwiftUI

struct User: Identifiable {
    var id = "Taylor Swift"
}

struct ContentView: View {
    
    @State private var selectedUser: User? = nil
    @State private var isShowingUser = false

    var body: some View {
        Button("Tap Me") {
            selectedUser = User()
            isShowingUser = true

        }
//        .sheet(item: $selectedUser) { user in
//            Text(user.id)
//        }
//        .alert("Welcome", isPresented: $isShowingUser, presenting: selectedUser) { user in
//            Button(user.id) { }
//        }
                .sheet(item: $selectedUser) { user in
                    Text(user.id)
                        .presentationDetents([.medium, .large])
                }
    }
}


#Preview {
    ContentView()
}
