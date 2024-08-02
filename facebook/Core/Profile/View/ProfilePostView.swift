//
//  ProfilePostView.swift
//  facebook
//
//  Created by Maruf Khan on 2/8/24.
//

import SwiftUI

struct ProfilePostView: View {
    var body: some View {
        VStack {
            HStack{
                Text("Your Posts").fontWeight(.bold)
                Spacer()
                Button {
                    
                } label: {
                    Text("Filters")
                }

            }.padding(.horizontal)
            HStack{
               
                NavigationLink(destination: ProfileView().navigationBarBackButtonHidden()) {
                    Image("profile").resizable().frame(width: 40,height: 40).clipShape(Circle())
                }
                
                Button {
                    
                } label: {
                    HStack {
                        Text("Whats on your mind?").foregroundStyle(.black)
                        Spacer()
                    }.padding(.horizontal).padding(.vertical,10)
                }
                
                Image(systemName: "photo.on.rectangle.angled").resizable().scaledToFill().frame(width: 20,height: 20).foregroundColor(.green)
                
            }.padding(.horizontal).padding(.bottom)
        }
    }
}

#Preview {
    ProfilePostView()
}
