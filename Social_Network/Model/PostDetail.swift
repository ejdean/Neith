//
//  PostDetail.swift
//  Social_Network
//
//  Created by William Dean on 23/02/2021.
//
import SwiftUI
import Foundation

struct PostDetail: View {
    var post: Post
    
    var body: some View {
        VStack {
            HStack {
                    circleImage(image: post.image)
                Text(post.Author)
                        .font(.headline)
                        .foregroundColor(Color.gray)
                    Spacer()
                Text(post.Time)
                    .font(.caption)
            }
            Text(post.Body)
            .padding()
            Divider()
        }
    }
}

struct PostDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PostDetail(post: Posts[0])
            PostDetail(post: Posts[1])
            PostDetail(post: Posts[2])
        }.previewLayout(.fixed(width: 400, height: 200))
    }
}
