//
//  FirstCustomSegue.swift
//  BaseSegues
//
//  Created by caiiiac on 15/8/6.
//  Copyright (c) 2015年 sun3d. All rights reserved.
//

import UIKit

class FirstCustomSegue: UIStoryboardSegue {
    
    override func perform() {
        
        var firstVCView = self.sourceViewController.view as UIView!
        var SecondVCView = self.destinationViewController.view as UIView!
        
        
        let screenWidth = UIScreen.mainScreen().bounds.size.width
        let screenHeight = UIScreen.mainScreen().bounds.size.height
        
        SecondVCView.frame = CGRectMake(0, -screenHeight, screenWidth, screenHeight)
        
        let window = UIApplication.sharedApplication().keyWindow
        window?.insertSubview(SecondVCView, aboveSubview: firstVCView)
        
        UIView.animateWithDuration(0.4, animations: { () -> Void in
            firstVCView.frame = CGRectOffset(firstVCView.frame, 0, screenHeight)
            SecondVCView.frame = CGRectOffset(SecondVCView.frame, 0, screenHeight)
            
        }) { (Finished) -> Void in
//            self.sourceViewController.navigationController?!.pushViewController(self.destinationViewController as! UIViewController, animated: false)

            self.sourceViewController.presentViewController(self.destinationViewController as! UIViewController, animated: false, completion: nil)
        }
    }
   
}
