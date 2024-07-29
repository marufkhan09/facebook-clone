//
//  StoryCardView.swift
//  facebook
//
//  Created by Maruf Khan on 30/7/24.
//

import SwiftUI


struct StoryCardView: View {
    var body: some View {
        Image("Story1").resizable().scaledToFill().frame(width: 100, height: 170).clipShape(RoundedRectangle(cornerRadius: 15)).overlay {
            VStack(alignment:.leading){
                Image("profile").resizable().scaledToFill().frame(width: 36,height: 36).clipShape(Circle()).overlay(content: {
                    Circle().stroke(lineWidth: 3).foregroundStyle(Color(.blue))
                })
                
                .padding(.top,8).padding(.leading,8)
                
                Spacer()
                Text("Jim Harper").frame(width: 100,height: 30).font(.system(size: 14,weight: .bold)).foregroundStyle(Color(.white))
                Spacer().frame(height:8)
            }
        }
    }
}

#Preview {
    StoryCardView()
}
