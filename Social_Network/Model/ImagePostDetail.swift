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
        VStack {
            HStack {
                    circleImage(image: post.imageProfile)
                Text(post.Author)
                        .font(.headline)
                        .foregroundColor(Color.gray)
                    Spacer()
                Text(String(post.Time))
                    .font(.caption)
            }
            Image(post.imageBodyName)
                .resizable()
                .frame(width: 300.0, height: 200.0)
            Divider()
        }
    }
}

struct ImagePostDetail_Previews: PreviewProvider {
    static var previews: some View {
        ImagePostDetail(post: Posts[1])
    }
}
