//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onCKeyPress(_ sender: UIButton) {
        print("C got pressed")
        playSound(fileName: "C")
    }
    @IBAction func onDKeyPress(_ sender: UIButton) {
        print("D got pressed")
        playSound(fileName: "D")
    }
    
    @IBAction func onEKeyPress(_ sender: UIButton) {
        print("E got pressed")
        playSound(fileName: "E")
    }
    
    @IBAction func onFKeyPress(_ sender: UIButton) {
        print("F got pressed")
        playSound(fileName: "F")
    }
    
    @IBAction func onGKeyPress(_ sender: UIButton) {
        print("G got pressed")
        playSound(fileName: "G")
    }
    
    @IBAction func onAKeyPress(_ sender: UIButton) {
        print("A got pressed")
        playSound(fileName: "A")
    }
    
    @IBAction func onBKeyPress(_ sender: UIButton) {
        print("B got pressed")
        playSound(fileName: "B")
    }
    
}

var player: AVAudioPlayer?

func playSound(fileName:String) {
    guard let path = Bundle.main.path(forResource: fileName, ofType: "wav")else { return }
    let url = URL(fileURLWithPath: path)
    
    do {
        player = try AVAudioPlayer(contentsOf: url)
        player?.play()
    } catch let error {
        print(error.localizedDescription)
    }
    
}

