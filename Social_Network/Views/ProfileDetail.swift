//
//  ProfileDetail.swift
//  Social_Network
//
//  Created by William Dean on 06/03/2021.
//

import SwiftUI

struct ProfileDetail: View {
    var profile: Profile
    
    var body: some View {
        VStack{
            HStack{
                circleImage(fName: profile.imageProfileName)
                Text(profile.Name)
                Text(String(profile.id))
            }
            PostList(following: [profile.id]) // On your profile page you just follow yourself to see only your own posts!
        }
    }
}

struct ProfileDetail_Previews: PreviewProvider {
    static var previews: some View {
        ProfileDetail(profile: Profiles[1]!) // 1 - Ed, 2 - Will, 3 - Helen is ID to Name mapping. 
    }
}
