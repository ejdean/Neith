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
                    circleImage()
                Text(post.Author)
                        .font(.headline)
                        .foregroundColor(Color.gray)
                    Spacer()
                Text(post.Time)
                        .font(.subheadline)
            }
            Text(post.Body)
            .padding()
            Divider()
            Spacer()
        }
    }
}

struct PostDetail_Previews: PreviewProvider {
    static var previews: some View {
        PostDetail(post: Posts[0])
    }
}
