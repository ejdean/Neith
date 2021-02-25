//
//  circleImage.swift
//  Social_Network
//
//  Created by William Dean on 23/02/2021.
//

import SwiftUI

struct circleImage: View {
    var body: some View {
        Image("man")
            .resizable()
            .frame(width: 80.0, height: 64.0)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.gray, lineWidth: 4))
            .shadow(radius: 4)
            
    }
}

struct circleImage_Previews: PreviewProvider {
    static var previews: some View {
        circleImage()
    }
}
