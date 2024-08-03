//
//  MenuView.swift
//  facebook
//
//  Created by Maruf Khan on 3/8/24.
//

import SwiftUI

struct MenuView: View {
    
    let twoColumnGrid = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
 private var shortcutArray: [String: String] = [
        "Memories": "gobackward",
        "Saved": "bookmark.fill",
        "Groups": "person.2.circle",
        "Video": "play.tv.fill",
        "Marketplace": "storefront.fill",
        "Friends": "person.2.fill",
        "Feeds": "calendar.badge.clock",
        "Events": "calendar"
    ]

    
    var body: some View {
        NavigationView{
            GeometryReader { proxy in
                ScrollView {
                    VStack {
                        VStack(alignment:.leading) {
                            HStack(alignment:.center) {
                                Image("profile").resizable().frame(width: 50,height: 50).clipShape(Circle()).padding(.leading,8)
                                
                                Text("Maruf Khan")
                                Spacer()
                                Image(systemName: "chevron.down.circle.fill").resizable().scaledToFit().foregroundColor(Color(.systemGray)).frame(width: 24,height: 24)
                            }
                            Divider()
                            HStack(alignment:.center) {
                                Image(systemName: "plus.circle.fill").resizable().scaledToFit().frame(width: 30,height: 30).padding(.leading,8)
                                Text("Create another profile")
                                Spacer()
                            }.padding(.all,8)
                        }.padding().background(.white).clipShape(RoundedRectangle(cornerRadius: 8)).padding(.horizontal).padding(.vertical).background(Color(.systemGray6))
                        
                        HStack {
                            Text("Your Shortcuts").fontWeight(.semibold).foregroundStyle(Color(.systemGray))
                            Spacer()
                        }.padding(.horizontal)
                        
                        LazyVGrid(columns: twoColumnGrid, spacing: 12) {
                            ForEach(Array(shortcutArray.keys), id: \.self) { key in
                                if let value = shortcutArray[key] {
                                    VStack(alignment: .leading, spacing: 12) {
                                        Image(systemName: value).resizable().scaledToFit().frame(width:28,height:28).foregroundStyle(.blue)
                                        Text(key).font(.headline)
                                    }
                                    .frame(width: proxy.size.width * 0.36, height: 60, alignment: .leading)
                                    .padding(.all,18)
                                    .background(Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                        }.padding(.horizontal)
                        
                        
                        
                    }.background(Color(.systemGray6))
                }.scrollIndicators(.hidden)
                    .toolbar(content: {
                        ToolbarItem(placement: .topBarLeading) {
                            Text("Menu")
                                .font(.title)
                                .fontWeight(.bold)
                        }
                        ToolbarItem(placement: .topBarTrailing) {
                            HStack(spacing: 24) {
                                Image(systemName: "gearshape.fill")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 24, height: 24)
                                    .font(.system(size: 18, weight: .bold))
                                Image(systemName: "magnifyingglass")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 24, height: 24)
                                    .font(.system(size: 18, weight: .bold))
                            }
                        }
                    }).background(Color(.systemGray6))
            }
        }
    }
}

#Preview {
    MenuView()
}








