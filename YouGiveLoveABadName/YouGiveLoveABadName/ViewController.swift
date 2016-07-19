//
//  ViewController.swift
//  YouGiveLoveABadName
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var sizeButton: UIButton!
    
    var heigtConstraint = NSLayoutConstraint()
    
    var centerYConstraint = NSLayoutConstraint()
    
    var decreaseSize: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.imageView.removeConstraints(self.imageView.constraints)
        self.imageView.translatesAutoresizingMaskIntoConstraints = false
        
        self.heigtConstraint = self.imageView.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 0.5)
        
        self.centerYConstraint = self.imageView.centerYAnchor.constraintEqualToAnchor(self.view.centerYAnchor)
        
        self.heigtConstraint.active = true
        
        self.centerYConstraint.active = true
        
    //brings button to front of view
        self.view.bringSubviewToFront(self.sizeButton)
    }
    
    
    
    
    @IBAction func expandButtonTapped(sender: AnyObject) {
        
        if (decreaseSize == false) {
            
            UIView.animateKeyframesWithDuration(1.2, delay: 0.0, options: [], animations: {
                
                UIView.addKeyframeWithRelativeStartTime(0.0, relativeDuration: 0.4, animations: {
                    
                    self.heigtConstraint.active = false
                    
                    self.heigtConstraint = self.imageView.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 0.3)
                    
                    self.heigtConstraint.active = true
                    
                    self.view.layoutIfNeeded()
                })
                
                UIView.addKeyframeWithRelativeStartTime(0.4, relativeDuration: 0.5, animations: {
                    
                    self.heigtConstraint.active = false
                    
                    self.heigtConstraint = self.imageView.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 3)
                    
                    self.heigtConstraint.active = true
                    
                    self.view.layoutIfNeeded()
                })
                
                UIView.addKeyframeWithRelativeStartTime(0.9, relativeDuration: 0.3, animations: {
                    
                    self.heigtConstraint.active = false
                    
                    self.heigtConstraint = self.imageView.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 1.0)
                    
                    self.heigtConstraint.active = true
                    
                    self.view.layoutIfNeeded()
                })
                
            },
                    completion: {_ in
                        
                    self.heigtConstraint.active = false
                        
                    self.heigtConstraint = self.imageView.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor)
                        
                    self.heigtConstraint.active = true})
            
             decreaseSize = true
        }
            
        else {
            
            UIView.animateKeyframesWithDuration(1.2, delay: 0.0, options: [], animations: {
                
                UIView.addKeyframeWithRelativeStartTime(0.0, relativeDuration: 0.4, animations: {
                    
                    self.heigtConstraint.active = false
                    
                    self.heigtConstraint = self.imageView.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 3)
                    
                    self.heigtConstraint.active = true
                    
                    self.view.layoutIfNeeded()
                })
                
                UIView.addKeyframeWithRelativeStartTime(0.4, relativeDuration: 0.5, animations: {
                    
                    self.heigtConstraint.active = false
                    
                    self.heigtConstraint = self.imageView.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 0.3)
                    
                    self.heigtConstraint.active = true
                    
                    self.view.layoutIfNeeded()
                })
                
                UIView.addKeyframeWithRelativeStartTime(0.9, relativeDuration: 0.3, animations: {
                    
                    self.heigtConstraint.active = false
                    
                    self.heigtConstraint = self.imageView.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 0.5)
                    
                    self.heigtConstraint.active = true
                    
                    self.view.layoutIfNeeded()
                })
                
            },
                    completion: {_ in
                        
                    self.heigtConstraint.active = false
                        
                    self.heigtConstraint = self.imageView.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 0.5)
                        
                    self.heigtConstraint.active = true})
            
            decreaseSize = false
        }
        
    }

}

