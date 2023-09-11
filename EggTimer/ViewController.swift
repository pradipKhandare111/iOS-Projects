//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var labelOfApp: UILabel!
    
    let eggTimes = ["Soft" : 3, "Medium" : 4, "Hard" : 7]
    var timer = Timer()
    var totalTime = 0
    var secondPassed = 0
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate()
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        
        progressBar.progress = 0.0
        secondPassed = 0
        labelOfApp.text = hardness
      //  timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
       timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer()
    {
        if secondPassed < totalTime {
            secondPassed += 1
            progressBar.progress = Float(secondPassed) / Float(totalTime)
            print(Float(secondPassed) / Float(totalTime))
        } else {
            timer.invalidate()
            labelOfApp.text = "DONE!.."
        }
    }
    
}








//        if(hardness == "Soft"){
//            print(softTime)
//        } else if (hardness == "Medium") {
//            print(mediumTime)
//        } else if (hardness == "Hard"){
//            print(hardTime)
//        } else {
//            print("required another time")
//        }

//        switch hardness {
//        case "Soft" :
//            print(softTime)
//        case "Medium" :
//            print(mediumTime)
//        case "Hard" :
//            print(hardTime)
//        default:
//            print("required another time")
//        }
//    }

//        switch hardness {
//        case "Soft" :
//            print(eggTimes["softTime"])
//        case "Medium" :
//            print(eggTimes["mediumTime"])
//        case "Hard" :
//            print(eggTimes["hardTime"])
//        default:
//            print("required another time")
//
//        }


//        let result = eggTimes[hardness]!
//        print(result)
