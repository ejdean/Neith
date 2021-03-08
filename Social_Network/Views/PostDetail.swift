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
        let postedBy = "Posted by " + post.Author + " "
        let postedAgo = String(post.Time) + " Ago"
        VStack(alignment: .trailing) {
            HStack() {
                    circleImage(fName: post.imageProfileName)
                        .padding(5)
                    Text(post.Body)
                        .fixedSize(horizontal: false, vertical: true)
                        .lineLimit(2)
                        .font(.callout)
                        .foregroundColor(Color.gray)
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                Text(postedBy + postedAgo)
                    .font(.callout)
                    .foregroundColor(Color.gray)
        }
        .padding()
        .frame(minWidth: 0, maxWidth: .infinity)
        .overlay(
            RoundedRectangle(cornerRadius: 7)
                .stroke(Color.gray, lineWidth: 3)
                .padding(12))
    }
}

struct PostDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PostDetail(post: Posts[0])
            PostDetail(post: Posts[1])
            PostDetail(post: Posts[2])
        }.previewLayout(.fixed(width: 390, height: 390))
    }
}
