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
        
        print(commonAncestor(purpleView, yellowView) == self.view)
        print(commonAncestor(greenView, brownView) == redView)
        print(commonAncestor(brownView, purpleView) == self.view)
    }
    
    func commonAncestor(_ view1: UIView, _ view2: UIView) -> UIView? {
        if (view2.contains(viewInAncestor: view1)) {
            return view1
        }
        
        var parent = view1.superview
        
        while (parent != nil) {
            guard let parentView = parent else { return nil }
            
            if (view2.contains(viewInAncestor: parentView)) {
                return parentView
            }
            
            parent = parentView.superview
        }
        
        return nil
    }
}

extension UIView {
    func contains(viewInAncestor view: UIView) -> Bool {
        if self == view {
            return true
        }
        
        var parent = self.superview
        while parent != nil {
            if parent! == view {
                return true
            }
            parent = parent?.superview
        }
        
        return false
    }
}









