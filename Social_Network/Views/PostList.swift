//
//  PostList.swift
//  Social_Network
//
//  Created by William Dean on 25/02/2021.
//

import SwiftUI

struct PostList: View {
    var body: some View {
        ScrollView(.vertical){
            VStack(spacing: -15) {
                ForEach(Posts.sorted()){post_ in
                    if post_.isImagePost{
                        ImagePostDetail(post: post_)
                    } else {
                        PostDetail(post: post_)
                    }
                }
            }
        }
    }
}

struct PostList_Previews: PreviewProvider {
    static var previews: some View {
        PostList()
    }
}
