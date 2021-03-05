//
//  Post.swift
//  Social_Network
//
//  Created by William Dean on 23/02/2021.
//
import Foundation
import SwiftUI

struct Post: Hashable, Codable, Identifiable, Comparable {
    var id: Int
    var Author: String
    var Time: Int // Seconds since epoch ??
    var Body: String
    private var imageProfileName: String
        var imageProfile: Image {
            Image(imageProfileName)
        }
    var isImagePost: Bool
    var imageBodyName: String
    
    internal init(id: Int, Author: String, Time: Int, Body: String, Image: String, isImagePost: Bool) {
        self.id = id
        self.Author = Author
        self.Time = Time
        self.Body = Body
        self.imageProfileName = Image
        self.isImagePost = isImagePost
        self.imageBodyName = Image
    }
    
    static func < (lhs: Post, rhs: Post) -> Bool {
        lhs.Time < rhs.Time
    }
}
