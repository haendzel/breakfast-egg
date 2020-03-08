//
//  ViewController.swift
//  BreakfastEgg
//
//  Created by Filip Handzel on 07/03/2020.
//  Copyright © 2020 Filip Handzel. All rights reserved.
//

import UIKit
import Foundation
import AVFoundation

class ViewController: UIViewController {
    
    var seconds : Int!
    var timer = Timer();
    var totalTime = 0;
    var secondsPassed = 0;
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]; //300, 420, 720
    
    var player: AVAudioPlayer!
    
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet var collectionOfImages:[UIImageView]!
    
    override func viewDidLoad() {
        subtitleLabel.text = ""
        super.viewDidLoad()
    }
    
    @IBAction func eggButton(_ sender: UIButton) {
        subtitleLabel.text = ""
        secondsPassed = 0;
        progressBar.progress = 0.0
        titleLabel.text = "Jaki typ jajek wybierasz?"
        timer.invalidate()
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        switch (hardness) {
          case "Soft":
            seconds = eggTimes["Soft"]
            subtitleLabel.text = "Jajko na miękko"
            break;
         case "Medium":
            seconds = eggTimes["Medium"]
            subtitleLabel.text = "Jajko na średnio"
            break;
        case "Hard":
            seconds = eggTimes["Hard"]
            subtitleLabel.text = "Jajko na twardo"
          default:
            print("Fatal Error")
            break;
        }
        runTimer()
    }
    
    func runTimer() {
           timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(ViewController.updateTimer)), userInfo: nil, repeats: true)
       }
    
    @objc func updateTimer() {
        if secondsPassed < totalTime {
            secondsPassed += 1
            titleLabel.text = "Jajka się gotują..."
            progressBar.progress = Float(secondsPassed)/Float(totalTime)
            print(Float(secondsPassed)/Float(totalTime))
        } else {
            timer.invalidate()
            titleLabel.text = "Już gotowe!"
            playSound()
        }
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "alarm", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        print(url!)
    }
}
