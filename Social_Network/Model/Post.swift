//
//  Post.swift
//  Social_Network
//
//  Created by William Dean on 23/02/2021.
//
import Foundation
import SwiftUI

struct Post: Hashable, Codable, Identifiable, Comparable {
    // Properties of the Post
    var id: Int
    var AuthorID: Int
    var Time: Int // Seconds since epoch ??
    var Body: String
    var isImagePost: Bool
    var imageBodyName: String
    
    // Display Properties from the Profile
    var Author: String {Profiles[AuthorID]!.Name}
    var imageProfileName: String {Profiles[AuthorID]!.imageProfileName}
    
    internal init(id: Int, AuthorID: Int, Time: Int, Body: String, Image: String, isImagePost: Bool) {
        self.id = id
        self.AuthorID = AuthorID
        self.Time = Time
        self.Body = Body
        self.isImagePost = isImagePost
        self.imageBodyName = Image
    }

    static func < (lhs: Post, rhs: Post) -> Bool {
        lhs.Time < rhs.Time
    }
}
