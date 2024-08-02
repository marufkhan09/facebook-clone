//
//  NewsFeedView.swift
//  facebook
//
//  Created by Maruf Khan on 29/7/24.
//

import SwiftUI

struct NewsFeedView: View {
    private var FacebookBlue = Color(red: 26/255, green: 103/255, blue:178/255)
    var body: some View {
        NavigationStack{
            VStack {
                
                ScrollView {
                    HeaderView()
                    DividerView()
                    StoryFeedView()
                    DividerView()
                    ForEach(0..<10){ _ in
                        PostView(facebookBlue: FacebookBlue)
                    }
                    Spacer()
                    
                }.scrollIndicators(.hidden)
                
            }.toolbar() {
                ToolbarItem(placement: .topBarLeading) {
                    Text("facebook").font(.system(size: 32,weight: .bold)).foregroundStyle(FacebookBlue)
                    
                }
                ToolbarItem(placement: .topBarTrailing) {
                    HStack (spacing:24){
                        Image(systemName: "plus.circle.fill").resizable().scaledToFill().frame(width: 24,height: 24)
                        Image(systemName: "magnifyingglass").resizable().scaledToFill().frame(width: 24,height: 24).font(.system(size: 18,weight: .bold))
                        Image("messenger").resizable().scaledToFill().frame(width: 24,height: 24)
                    }
                }
                
            }
        }
    }
}


#Preview {
    NewsFeedView()
}
