//
//  ViewController.swift
//  Menu Bars
//
//  Created by Arjun Lalwani on 10/10/16.
//  Copyright © 2016 Arjun Lalwani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 210
    
    var timer = Timer() // class named Timer
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBAction func playButton(_ sender: AnyObject) {
        
        // time interval - every 1s
        // target - which class should run this?
        // selector - Class name . function
        // userInfo - are we passing in any user info?
        // repeats - should it repeat after 1
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
    }

    @IBAction func reduce(_ sender: AnyObject) {
        
        
        // converts UI Text field to integer text
        // var modifyLabel:Int? = Int(timerLabel.text!)
        
        if (counter > 10) {
            counter -= 10
        }
        
        timerLabel.text = "\(counter)"
    }
    
    
    @IBAction func increase(_ sender: AnyObject) {
        
        counter += 10
        timerLabel.text = "\(counter)"
    }
    
    @IBAction func reset(_ sender: AnyObject) {
        
        timerLabel.text = "210"
        counter = 210
        timer.invalidate()
        
    }
    
    @IBAction func pauseButton(_ sender: AnyObject) {
        
        timer.invalidate() // stops the timer
        
    }
    
    
    func processTimer() {
        
        if (counter > 0) {
            counter -= 1
            timerLabel.text = "\(counter)"
        } else {
            timerLabel.text = "0"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

