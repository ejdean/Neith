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
                    .padding(2)
                GeometryReader { geo in
                Text(post.Body)
                    .frame(width: geo.size.width, height: geo.size.height)
                    .font(.callout)
                    .foregroundColor(Color.gray)
                }
            }
            GeometryReader { geo in
            Text(post.Author + " " + post.Time + " ago")
                .font(.callout)
                .foregroundColor(Color.gray)
                .frame(width: geo.size.width * 0.9, height: geo.size.height * 0.3, alignment: .bottomTrailing)
            }
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 7)
                .stroke(Color.gray, lineWidth: 3)
                .padding(10))
    }
}

struct PostDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PostDetail(post: Posts[0])
            PostDetail(post: Posts[1])
            PostDetail(post: Posts[2])
        }.previewLayout(.fixed(width: 390, height: 120))
    }
}
