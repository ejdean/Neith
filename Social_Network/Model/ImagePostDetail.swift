//
//  ImagePostDetail.swift
//  Social_Network
//
//  Created by William Dean on 25/02/2021.
//

import SwiftUI

struct ImagePostDetail: View {
    var post: Post
    
    var body: some View {
        VStack(alignment: .trailing) {
            Image(post.imageBodyName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 7))
                    .overlay(circleImage(image: post.imageProfile).padding(5), alignment: .topLeading)
            Text(post.Author + " " + String(post.Time))
                .font(.callout)
                .foregroundColor(Color.gray)
                .frame(alignment: .bottomTrailing)
        }
        .padding()
        .overlay(
                RoundedRectangle(cornerRadius: 7)
                    .stroke(Color.gray, lineWidth: 3)
                    .padding(12))
    }
}

struct ImagePostDetail_Previews: PreviewProvider {
    static var previews: some View {
        ImagePostDetail(post: Posts[1])
    }
}
