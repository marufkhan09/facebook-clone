//
//  ProfileFriendsView.swift
//  facebook
//
//  Created by Maruf Khan on 1/8/24.
//

import SwiftUI

struct ProfileFriendsView: View {
    var body: some View {
        HStack {
            VStack (alignment:.leading,spacing:4){
                Text("Friends").fontWeight(.bold)
                Text("600 friends").font(.system(size: 14)).foregroundStyle(Color(.systemGray))
            }
            Spacer()
            Button {
                
            } label: {
                Text("Find Friends")
            }
            
        }.padding(.vertical,4).padding(.horizontal)
    }
}

#Preview {
    ProfileFriendsView()
}
