//
//  ContentView.swift
//  Social_Network
//
//  Created by Edward Dean on 23/02/2021.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: -10) {
            HStack(alignment: .firstTextBaseline) {
                Image(systemName: "person.circle")
                    .font(.system(size: 35.0))
                    .foregroundColor(.gray)
                    .padding(8)
                HStack {
                    Image(systemName: "person.3.fill")
                        .font(.system(size: 25.0))
                        .foregroundColor(.gray)
                    Image(systemName: "gear")
                        .font(.system(size: 30.0))
                        .foregroundColor(.gray)
                }
                .font(.system(size: 30.0))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                .padding(5)
            }.padding(5)
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
