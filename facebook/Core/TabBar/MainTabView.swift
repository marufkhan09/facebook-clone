//
//  MainTabView.swift
//  facebook
//
//  Created by Maruf Khan on 29/7/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            FeedView().tabItem { Image(systemName: "house") }
            Text("Video").tabItem { Image(systemName: "play.tv") }
            Text("Friends").tabItem { Image(systemName: "person.2") }
            Text("Marketplace").tabItem { Image(systemName:"scribble") }
            Text("Menu").tabItem { Image(systemName: "line.3.horizontal") }
        }
    }
}

#Preview {
    MainTabView()
}
