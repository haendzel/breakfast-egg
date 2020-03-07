//
//  ViewController.swift
//  BreakfastEgg
//
//  Created by Filip Handzel on 07/03/2020.
//  Copyright © 2020 Filip Handzel. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    var seconds : Int!
    var timer = Timer();
//    var isTimerRunning = false;
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720];
    
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet var collectionOfImages:[UIImageView]!
    @IBAction func eggButton(_ sender: UIButton) {
        
        timer.invalidate()
        let hardness = sender.currentTitle!
        let result = eggTimes[hardness]!
        print(result)
        switch (hardness) {
          case "Soft":
            seconds = eggTimes["Soft"]
            break;
         case "Medium":
            seconds = eggTimes["Medium"]
            break;
        case "Hard":
            seconds = eggTimes["Hard"]
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
        if seconds > 0 {
            seconds -= 1;
            timerLabel.text = "\(seconds!) sekund"
        }
    }
}
