//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Juan Carlos Robledo Morales on 13/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
  
        NavigationSplitView(preferredCompactColumn: .constant(.detail)) {
//        NavigationSplitView(columnVisibility: .constant(.all)) {
            NavigationLink("Primary") {
                Text("New view")
            }
        } detail: {
            Text("Content")
                .navigationTitle("Content View")
        }
        .navigationSplitViewStyle(.balanced)


    }
}


#Preview {
    ContentView()
}
