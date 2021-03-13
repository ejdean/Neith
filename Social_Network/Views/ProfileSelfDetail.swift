//
//  ProfileSelfDetail.swift
//  Social_Network
//
//  Created by William Dean on 13/03/2021.
//
import SwiftUI

struct ProfileSelfDetail: View {
    var profile: Profile {Profiles[MeInstance.id]!}
    
    var body: some View {
        VStack(alignment: .leading, spacing: -10) {
            Text("This is your own profile page")
            HStack {
                HStack {
                    circleImage(fName: profile.imageProfileName)
                Text(profile.Name)
                    .foregroundColor(.gray)
                    .fixedSize(horizontal: false, vertical: true)
                    .lineLimit(1)
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                HStack {
                    Image(systemName: "person.3.fill")
                        .font(.system(size: 25.0))
                        .foregroundColor(.gray)
                    Image(systemName: "gear")
                        .font(.system(size: 30.0))
                        .foregroundColor(.gray)
                }
                .foregroundColor(.gray)
                .padding(5)
            }.padding(20)
            PostList(following: [profile.id]) // On your profile page you just follow yourself to see only your own posts!
        }
    }
}

struct ProfileSelfDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ProfileSelfDetail()
        }
    }
}

