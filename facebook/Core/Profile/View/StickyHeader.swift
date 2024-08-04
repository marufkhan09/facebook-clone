//
//  StickyHeader.swift
//  facebook
//
//  Created by Maruf Khan on 2/8/24.
//

import SwiftUI

struct StickyHeader: View {
    @State private var chips = [
        ChipModel(name: "Posts",isSelected: true),
        ChipModel(name: "Photos",isSelected:false),
        ChipModel(name: "Reels",isSelected:false)
    ]
    var body: some View {
        VStack {
            ChipOptionsView(
                chips: chips,
                onChipSelected: { chip in
                    print("Selected chip: \(chip.name)")
                }
            )
            DividerView()
        }
        .background(Color.white) // Ensure background is solid to avoid overlap issues
    }
}

#Preview {
    StickyHeader()
}
