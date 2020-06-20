//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var timerLabel: UILabel!
   
    
    let softTime = 5
    let mediumTime = 7
    
    let hardTime = 12
    //Subtract Times by 1
    let eggTimes = ["Soft": 300, "Medium":420, "Hard":720]
    var secondsRemaining = 60
    var totalTime = 0
    var secondsPassed = 0
    var timer = Timer()
    
    @IBAction func eggButton(_ sender: UIButton) {
        timer.invalidate()
        let hardness:String = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        progressBar.progress=0.0
        secondsPassed=0
        self.timerLabel.text = hardness
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounter() {
        //example functionality
        if secondsPassed <=  totalTime {
            let percentageProgress:Float = (Float(secondsPassed)/Float(totalTime))
            print(percentageProgress)
            progressBar.progress=percentageProgress
            secondsPassed+=1

        }
        
        else {
            timer.invalidate()
            self.timerLabel.text = "Done"
        }
    }
}
