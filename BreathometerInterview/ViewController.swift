//
//  ViewController.swift
//  BreathometerInterview
//
//  Created by Shein on 2/27/17.
//  Copyright © 2017 Breathometer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var getTimeButton: UIButton!
    var timeService = TimeService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func getTime(_ sender: Any) {
        timeService.load { [unowned self] time in
            self.timeLabel.text = time.fulldate
        }
    }

}

