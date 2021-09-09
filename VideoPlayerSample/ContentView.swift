//
//  ContentView.swift
//  VideoPlayerSample
//
//  Created by Anton Paliakou on 9/9/21.
//  https://tonidevblog.com/

import SwiftUI

struct ContentView: View {
    
    let videoUrl = URL(fileURLWithPath: Bundle.main.path(forResource: "Pexels Sea", ofType: "mp4")!)
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: VideoPlayerView(url: videoUrl)) {
                    Text("VideoPlayer")
                }
                NavigationLink(destination: VideoPlayerWithOverlayView(url: videoUrl)) {
                    Text("VideoPlayer with video overlay")
                }
            }
            .navigationTitle("VideoPlayer Samples")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
