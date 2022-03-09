//
//  PlayerViewModel.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 09/03/22.
//

import Foundation
import UIKit
import SwiftUI
import AVKit

class PlayerView: UIView {

    // Override the property to make AVPlayerLayer the view's backing layer.
    override static var layerClass: AnyClass { AVPlayerLayer.self }

    // The associated player object.
    var player: AVPlayer? {
        get { playerLayer.player }
        set { playerLayer.player = newValue }
    }

    private var playerLayer: AVPlayerLayer { layer as! AVPlayerLayer }
}

struct CustomVideoPlayer: UIViewRepresentable {
    let player: AVPlayer

    func makeUIView(context: Context) -> PlayerView {
        let view = PlayerView()
        view.player = player
        return view
    }
    
    func updateUIView(_ uiView: PlayerView, context: Context) { }
}


