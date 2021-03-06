//
//  circleImage.swift
//  Social_Network
//
//  Created by William Dean on 23/02/2021.
//

import SwiftUI

struct circleImage: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .frame(width: 64.0, height: 64.0)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.gray, lineWidth: 3))           
    }
}

struct circleImage_Previews: PreviewProvider {
    static var previews: some View {
        circleImage(image: Image("man"))
    }
}
