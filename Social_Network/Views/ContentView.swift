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
            Text("Yo playerz, welcome to Neith the sickest social you've ever balled with")
                .font(.headline)
                .multilineTextAlignment(.center)
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
