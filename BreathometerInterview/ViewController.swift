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
    
    let TIME_URL = "https://script.googleusercontent.com/macros/echo?user_content_key=n14ikvdBUp8A_WlRlcwa8KtzQrzH_A6kb7qt34zIa-vD_inyhSC2OA1zFhrUStUOV8nnlcuBYqfDAL9lYGlwmHJ6V4TeYnc3m5_BxDlH2jW0nuo2oDemN9CCS2h10ox_1xSncGQajx_ryfhECjZEnJ9GRkcRevgjTvo8Dc32iw_BLJPcPfRdVKhJT5HNzQuXEeN3QFwl2n0M6ZmO-h7C6eIqWsDnSrEd&lib=MwxUjRcLr2qLlnVOLh12wSNkqcO1Ikdrk"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func getTime(_ sender: Any) {

    }

}

