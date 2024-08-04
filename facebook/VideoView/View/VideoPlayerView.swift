//
//  VideoPlayerView.swift
//  facebook
//
//  Created by Maruf Khan on 5/8/24.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    private let player: AVPlayer

    init(videoURL: String) {
        guard let url = URL(string: videoURL) else {
            fatalError("Invalid URL")
        }
        self.player = AVPlayer(url: url)
    }

    var body: some View {
        VideoPlayer(player: player)
            .onAppear {
                player.pause()
            }
            .onDisappear {
                player.pause()
            }
            .frame(height: 400)
    }
}



#Preview {
    VideoPlayerView(videoURL: "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4")
}
