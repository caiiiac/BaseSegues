//
//  FirstCustomSegueUnwind.swift
//  BaseSegues
//
//  Created by caiiiac on 15/8/6.
//  Copyright (c) 2015年 sun3d. All rights reserved.
//

import UIKit

class FirstCustomSegueUnwind: UIStoryboardSegue {
    
    
    override func perform() {
        var secondVCView = self.sourceViewController.view as  UIView!
        var firstVCView = self.destinationViewController.view as UIView!
        
        let window = UIApplication.sharedApplication().keyWindow
        window?.insertSubview(firstVCView, aboveSubview: secondVCView)
        
        let screenHeight = UIScreen.mainScreen().bounds.size.height
        
        UIView.animateWithDuration(0.4, animations: { () -> Void in
            firstVCView.frame = CGRectOffset(firstVCView.frame, 0, -screenHeight)
            secondVCView.frame = CGRectOffset(secondVCView.frame, 0, -screenHeight)
        }) { (Finished) -> Void in
//            self.sourceViewController.navigationController?!.popViewControllerAnimated(false)
            self.sourceViewController.dismissViewControllerAnimated(false, completion: nil)
            
        }
    }
}
