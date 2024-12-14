//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Juan Carlos Robledo Morales on 13/12/24.
//

import SwiftUI


struct UserView: View {
    var body: some View {
        Group {
            Text("Name: Paul")
            Text("Country: England")
            Text("Pets: Luna and Arya")
        }
        .font(.title)
    }
}

//struct ContentView: View {
//    @State private var layoutVertically = false
//
//    var body: some View {
//        Button {
//            layoutVertically.toggle()
//        } label: {
//            if layoutVertically {
//                VStack {
//                    UserView()
//                }
//            } else {
//                HStack {
//                    UserView()
//                }
//            }
//        }
//    }
//}

struct ContentView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass

    var body: some View {
//        if sizeClass == .compact {
//            VStack(content: UserView.init)
//        } else {
//            HStack(content: UserView.init)
//        }

//        if horizontalSizeClass == .compact {
//            VStack {
//                UserView()
//            }
//        } else {
//            HStack {
//                UserView()
//            }
//        }
        ViewThatFits {
            Rectangle()
                .frame(width: 500, height: 200)

            Circle()
                .frame(width: 200, height: 200)
        }

    }
}


#Preview {
    ContentView()
}
