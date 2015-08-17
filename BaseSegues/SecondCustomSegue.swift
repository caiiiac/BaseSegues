//
//  SecondCustomSegue.swift
//  BaseSegues
//
//  Created by caiiiac on 15/8/6.
//  Copyright (c) 2015年 sun3d. All rights reserved.
//

import UIKit

class SecondCustomSegue: UIStoryboardSegue {
   
    override func perform() {
        var firstVCView = self.sourceViewController.view as UIView!
        var thirdVCView = self.destinationViewController.view as UIView!
        
        let window = UIApplication.sharedApplication().keyWindow
        window?.insertSubview(thirdVCView, aboveSubview: firstVCView)
        
        thirdVCView.transform = CGAffineTransformScale(thirdVCView.transform, 0.001, 0.001)
        
        UIView.animateWithDuration(0.2, animations: { () -> Void in
            
            firstVCView.transform = CGAffineTransformScale(firstVCView.transform, 0.001, 0.001)
            
        }) { (Finished) -> Void in
            
            
            UIView.animateWithDuration(0.2, animations: { () -> Void in
                thirdVCView.transform = CGAffineTransformIdentity
                
            }, completion: { (Finished) -> Void in
                firstVCView.transform = CGAffineTransformIdentity
                
//                if let navController = self.sourceViewController.navigationController {
//                navController!.pushViewController(self.destinationViewController as! UIViewController , animated: false)
//                    
//                }
                
                self.sourceViewController.presentViewController(self.destinationViewController as! UIViewController, animated: false, completion: nil)
                

            })
            
            
        }
    }
}
