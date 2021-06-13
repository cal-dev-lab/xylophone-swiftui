//
//  ViewController.swift
//  Xylophone
//
//  Created by cal-dev-lab : https://github.com/cal-dev-lab ? https://c-l.dev
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        // print(sender.backgroundColor)
        // Outputs to term the background colour of the button pressed
        
        // print(sender.currentTitle)
        // Outputs to term the current title of the button pressed
        
        playSound(soundName: sender.currentTitle!)
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
