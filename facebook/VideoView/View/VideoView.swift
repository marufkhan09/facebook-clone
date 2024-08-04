//
//  VideoView.swift
//  facebook
//
//  Created by Maruf Khan on 5/8/24.
//

import SwiftUI

struct VideoView: View {
    
    @State private var chips = [
        ChipModel(name: "For you",isSelected: true),
        ChipModel(name: "Live",isSelected:false),
        ChipModel(name: "Gaming",isSelected:false),
        ChipModel(name: "Reels",isSelected:false),
        ChipModel(name: "Following",isSelected:false)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ScrollView(.horizontal) {
                        ChipOptionsView(
                            chips: chips,
                            onChipSelected: { chip in
                                print("Selected chip: \(chip.name)")
                            }
                        )
                    }
                    DividerView()
                    
                    ForEach(0..<5) { _ in
                        PostView(isVideo: true)
                    }
                }
                .background(Color.white) // Ensure background is solid to avoid overlap issues
            }.scrollDisabled(false)
            .scrollIndicators(.hidden)
               
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Text("Video")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        HStack(spacing: 24) {
                            Image(systemName: "person.fill")
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
                }
        }
    }
}

#Preview {
    VideoView()
}
