//
//  PostList.swift
//  Social_Network
//
//  Created by William Dean on 25/02/2021.
//

import SwiftUI

struct PostList: View {
    var body: some View {
        List(Posts) {post_ in
                    PostDetail(post: post_)
                }
    }
}

struct PostList_Previews: PreviewProvider {
    static var previews: some View {
        PostList()
    }
}
