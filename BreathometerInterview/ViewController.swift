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
        
        var views = Set<UIView>()
        var parent1: UIView? = view1
        
        repeat {
            guard let parentView = parent1 else { return nil }

            if parentView == view2 {
                return parentView
            }
            
            views.insert(parentView)
            parent1 = parentView.superview
        } while(parent1 != nil)
        
        
        var parent2: UIView? = view2

        repeat {
            guard let parentView = parent2 else { return nil }
            
            if views.contains(parentView) {
                return parentView
            }
            
            views.insert(parentView)
            parent2 = parentView.superview
        } while(parent2 != nil)
        
        return nil
    }
}








