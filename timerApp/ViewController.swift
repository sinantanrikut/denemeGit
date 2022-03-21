//
//  ViewController.swift
//  timerApp
//
//  Created by Sinan Tanrıkut on 27.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counter = 10
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeFunc), userInfo: nil, repeats: true)
        
    }
    @objc func timeFunc(){
        timeLabel.text = "Time: \(counter)"
        counter = counter - 1
        
        if counter == 0  {
            timeLabel.text = " Time is full"
            timer.invalidate()
        }
    }

    @IBAction func buttonClicked(_ sender: Any) {
        print("button clicked12")
    }
    
}
