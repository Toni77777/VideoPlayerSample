//
//  VideoPlayerView.swift
//  VideoPlayerSample
//
//  Created by Anton Paliakou on 9/9/21.
//  https://tonidevblog.com/

import AVKit
import SwiftUI

struct VideoPlayerView: View {
    
    let url: URL

    var body: some View {
        VideoPlayer(player: AVPlayer(url: url))
            .frame(height: 320)
    }
}
