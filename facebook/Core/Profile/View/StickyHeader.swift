//
//  StickyHeader.swift
//  facebook
//
//  Created by Maruf Khan on 2/8/24.
//

import SwiftUI

struct StickyHeader: View {
    var body: some View {
        VStack {
            ProfileOptionsView()
            DividerView()
        }
        .background(Color.white) // Ensure background is solid to avoid overlap issues
    }
}

#Preview {
    StickyHeader()
}
