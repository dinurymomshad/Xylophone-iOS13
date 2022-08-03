//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//
//  Modified by Momshad Dinury on 03/08/2022

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onKeyPressed(_ sender: UIButton) {
        playSound(fileName: sender.currentTitle!)
    }

    /// Audio Functionality
    var player: AVAudioPlayer?
    
    func playSound(fileName:String) {
        let url = Bundle.main.url(forResource: fileName, withExtension: "wav")
        
        do {
            player = try AVAudioPlayer(contentsOf: url!)
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
        
    }
    
}



