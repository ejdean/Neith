//
//  ContentView.swift
//  Social_Network
//
//  Created by Edward Dean on 23/02/2021.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Profile")
                    .font(.callout)
                    .foregroundColor(Color.gray)
                Spacer()
                Text("Freinds")
                    .font(.callout)
                    .foregroundColor(Color.gray)
                Spacer()
                Text("Settings")
                    .font(.callout)
                    .foregroundColor(Color.gray)
            }.padding(8)
            PostList()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
