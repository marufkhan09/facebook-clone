//
//  MenuGridView.swift
//  facebook
//
//  Created by Maruf Khan on 4/8/24.
//

import SwiftUI


struct MenuGridView: View {
    private var width: CGFloat
    
    init(width: CGFloat) {
        self.width = width
    }
    
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
        LazyVGrid(columns: twoColumnGrid,alignment:.leading) {
            ForEach(Array(shortcutArray.keys), id: \.self) { key in
                if let value = shortcutArray[key] {
                    VStack(alignment:.leading) {
                        Image(systemName: value)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 28, height: 28)
                            .foregroundColor(.blue)
                        
                        Text(key)
                            .font(.headline)
                    }.padding().frame(width: width * 0.45, height: 100,alignment:.topLeading)
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    
                }
            }
        } .padding(.horizontal)
    }
}

#Preview {
    MenuGridView(width: 260)
}
