//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Juan Carlos Robledo Morales on 13/12/24.
//

import SwiftUI


//struct ContentView: View {
//    @State private var searchText = ""
//
//    var body: some View {
//        NavigationStack {
//            Text("Searching for \(searchText)")
//                .searchable(text: $searchText, prompt: "Look for something")
//                .navigationTitle("Searching")
//        }
//    }
//}

struct ContentView: View {
    @State private var searchText = ""
    let allNames = ["Subh", "Vina", "Melvin", "Stefanie"]

    var filteredNames: [String] {
        if searchText.isEmpty {
            allNames
        } else {
            allNames.filter { $0.localizedStandardContains(searchText) }
        }
    }

    var body: some View {
        NavigationStack {
            List(filteredNames, id: \.self) { name in
                Text(name)
            }
            .searchable(text: $searchText, prompt: "Look for something")
            .navigationTitle("Searching")
        }
    }
}


#Preview {
    ContentView()
}
