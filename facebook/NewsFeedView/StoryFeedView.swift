//
//  StoryFeedView.swift
//  facebook
//
//  Created by Maruf Khan on 30/7/24.
//

import SwiftUI

struct StoryFeedView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                MyStoryCardView()
                ForEach(0..<10) { _ in
                    StoryCardView()
                }
            }
        }.scrollIndicators(.hidden)
            .padding(.leading)
    }
}

#Preview {
    StoryFeedView()
}
