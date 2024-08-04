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
            NewsFeedView().tabItem { Image(systemName: "house") }
            VideoView().tabItem { Image(systemName: "play.tv") }
            FriendsView().tabItem { Image(systemName: "person.2") }
            MarketPlaceView().tabItem { Image("marketplace") }
            MenuView(showLogoutAlert: false).tabItem { Image(systemName: "line.3.horizontal") }
        }
    }
}

#Preview {
    MainTabView()
}
