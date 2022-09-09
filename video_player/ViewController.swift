//
//  ViewController.swift
//  video_player
//
//  Created by Ankur Wasnik on 08/09/22.
//

import UIKit
import AVKit //library for video player
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // Do any additional set up after view appears
        playVideo()
    }
    
    private func playVideo(){
        guard let path = Bundle.main.path(forResource: "test", ofType: "mp4") else {
            debugPrint("video file not found")
            return
        }
        
        let player = AVPlayer(url:URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true){
            player.play()
        }
    }


}

