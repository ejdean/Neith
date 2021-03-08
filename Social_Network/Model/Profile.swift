//
//  Profile.swift
//  Social_Network
//
//  Created by William Dean on 06/03/2021.
//

import Foundation
import SwiftUI

struct Profile: Hashable, Codable, Identifiable{
    var id: Int
    var Name: String
    var imageProfileName: String

    internal init(id: Int, Name: String, Image: String) {
        self.id = id
        self.Name = Name
        self.imageProfileName = Image
    }
}
