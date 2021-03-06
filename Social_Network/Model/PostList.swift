//
//  PostList.swift
//  Social_Network
//
//  Created by William Dean on 25/02/2021.
//

import SwiftUI

struct PostList: View {
    var following: [Int]
    
    var body: some View {
        ScrollView() {
            VStack(spacing: -15) {
                ForEach(Posts.sorted()){post_ in
                    if following.contains(post_.AuthorID){
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
}

struct PostList_Previews: PreviewProvider {
    static var previews: some View {
        PostList(following: [1, 2, 3]) // All Users - This needs making dynamic
    }
}
