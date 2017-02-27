//
//  ViewController.swift
//  BreathometerInterview
//
//  Created by Shein on 2/27/17.
//  Copyright © 2017 Breathometer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var purpleView: UIView!
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var brownView: UIView!
    @IBOutlet weak var yellowView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // (purpleView, yellowView) = self.view
        // (greenView, brownView) = redView
        // (brownView, purpleView) = self.view
    }

}

