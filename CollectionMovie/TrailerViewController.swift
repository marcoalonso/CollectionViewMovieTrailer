//
//  TrailerViewController.swift
//  CollectionMovie
//
//  Created by marco rodriguez on 01/06/22.
//

import UIKit
import youtube_ios_player_helper

class TrailerViewController: UIViewController, YTPlayerViewDelegate {
    
    
    @IBOutlet weak var reproductorYoutubeView: YTPlayerView!
    
    var trailerURL: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        reproductorYoutubeView.delegate = self
        reproductorYoutubeView.load(withVideoId: trailerURL ?? "yd2Go8_cnds")
    }
    

    func playerViewDidBecomeReady(_ playerView: YTPlayerView) {
        reproductorYoutubeView.playVideo()
    }
    
    @IBAction func verCanalCreador(_ sender: UIBarButtonItem) {
        reproductorYoutubeView.load(withVideoId: "AofIvEJaZjg")
    }
    

}
