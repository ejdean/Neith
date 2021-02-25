//
//  Post.swift
//  Social_Network
//
//  Created by William Dean on 23/02/2021.
//
import Foundation
import SwiftUI

struct Post: Hashable, Codable, Identifiable {
    var id: Int
    var Author: String
    var Time: String
    var Body: String
    
    internal init(id: Int, Author: String, Time: String, Body: String, Image: String) {
        self.id = id
        self.Author = Author
        self.Time = Time
        self.Body = Body
        self.imageName = Image
    }
    
    private var imageName: String
        var image: Image {
            Image(imageName)
        }
    
}
