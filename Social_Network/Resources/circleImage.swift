//
//  circleImage.swift
//  Social_Network
//
//  Created by William Dean on 23/02/2021.
//

import SwiftUI

struct circleImage: View {
    var fName: String
    
    var body: some View {
        Image(fName)
            .resizable()
            .frame(width: 64.0, height: 64.0)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.gray, lineWidth: 3))           
    }
}

struct circleImage_Previews: PreviewProvider {
    static var previews: some View {
        circleImage(fName: "man")
    }
}
