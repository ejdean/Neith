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
        let postedBy = "Posted by " + post.Author + " "
        let postedAgo = String(post.Time) + " Ago"
        VStack(alignment: .trailing) {
            Image(post.imageBodyName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 7))
                    .overlay(
                        NavigationLink(destination: post.AuthorID == MeInstance.id ? AnyView(ProfileSelfDetail()) : AnyView(ProfileDetail(profile: Profiles[post.AuthorID]!))) {
                            circleImage(fName: post.imageProfileName)
                                .padding(5)
                             }, alignment: .topLeading)
            Text(postedBy + postedAgo)
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
