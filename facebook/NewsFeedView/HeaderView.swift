//
//  HeaderView.swift
//  facebook
//
//  Created by Maruf Khan on 29/7/24.
//

import SwiftUI


struct HeaderView: View {
    var body: some View {
        HStack{
           
            NavigationLink(destination: ProfileView()) {
                Image("profile").resizable().frame(width: 40,height: 40).clipShape(Circle())
            }
            
            Button {
                
            } label: {
                HStack {
                    Text("Whats on your mind?").foregroundStyle(.black)
                    Spacer()
                }.padding(.horizontal).padding(.vertical,10).overlay {
                    Capsule().stroke(Color(.systemGray4), lineWidth: 1 ).padding(.leading,5).padding(.trailing,15)
                }
            }
            
            Image(systemName: "photo.on.rectangle.angled").resizable().scaledToFill().frame(width: 20,height: 20).foregroundColor(.green)
            
        }.padding(.horizontal).padding(.top,30).padding(.bottom)
    }
}

#Preview {
    HeaderView()
}
