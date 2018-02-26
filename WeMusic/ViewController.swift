//
//  ViewController.swift
//  WeMusic
//
//  Created by Uy Nguyen Long on 12/11/17.
//  Copyright © 2017 Uy Nguyen Long. All rights reserved.
//

import UIKit
import AVFoundation
import MediaPlayer
import AudioToolbox

class ViewController: UIViewController {
    var player: AVAudioPlayer? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        let url = URL.init(string: "http://api.soundcloud.com/tracks/293/stream")
//        let playerItem = AVPlayerItem.init(url: url!)
//        
//            player = AVPlayer.init(playerItem: playerItem)
//            guard let player = player else { return }
//            
//        
//            player.play()
//            print("Playing music")
        
        
        //let url = Bundle.main.url(forResource: "I2Y", withExtension: "mp3")!
        let data = NSData.init(contentsOf: URL.init(string: "http://api.soundcloud.com/tracks/293/stream")!)
        do {
            player = try AVAudioPlayer.init(data: data as! Data)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
            print("Playing music")
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

