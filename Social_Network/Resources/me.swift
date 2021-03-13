//
//  me.swift
//  Social_Network
//
//  Created by William Dean on 13/03/2021.
//

var MeInstance = Me(id: 1, Author: "Edward Dean")
struct Me: Hashable, Codable, Identifiable{
    // Properties of the Post
    var id: Int
    var Author: String
}


