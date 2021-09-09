//
//  VideoPlayerWithOverlayView.swift
//  VideoPlayerSample
//
//  Created by Anton Paliakou on 9/9/21.
//  https://tonidevblog.com/

import AVKit
import SwiftUI

struct VideoPlayerWithOverlayView: View {
    
    let url: URL

    var body: some View {
        VideoPlayer(player: AVPlayer(url: url), videoOverlay: {
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Text("Code sample by ToniDevBlog")
                        .foregroundColor(.white)
                }
            }.padding()
        }).frame(height: 320)
    }
}
