//
//  ReelsNLiveView.swift
//  facebook
//
//  Created by Maruf Khan on 3/8/24.
//

import SwiftUI

struct ReelsNLiveView: View {
    var body: some View {
        VStack(spacing:0) {
            Color(.systemGray5).frame(height:54).overlay {
                HStack(alignment:.center) {
                    ReelsItemView(title: "Reels", imagename: "play.rectangle.fill")
                    ReelsItemView(title: "Live", imagename: "video.fill")
                    Spacer()
                }.fontWeight(.semibold).padding(.horizontal)
            }
            Divider()
        }
    }
}
#Preview {
    ReelsNLiveView()
}
