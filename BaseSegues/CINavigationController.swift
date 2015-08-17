//
//  CINavigationController.swift
//  BaseSegues
//
//  Created by caiiiac on 15/8/7.
//  Copyright (c) 2015年 sun3d. All rights reserved.
//

import UIKit

class CINavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    override func segueForUnwindingToViewController(toViewController: UIViewController, fromViewController: UIViewController, identifier: String?) -> UIStoryboardSegue {
        
        
        return UIStoryboardSegue(identifier: identifier, source: fromViewController, destination: toViewController) {
            
            var secondVCView = fromViewController.view as  UIView!
            var firstVCView = toViewController.view as UIView!
            
            let window = UIApplication.sharedApplication().keyWindow
            window?.insertSubview(firstVCView, aboveSubview: secondVCView)
            
            let screenHeight = UIScreen.mainScreen().bounds.size.height
            if let id = identifier {
                if id == "idFirstSegueUnwind" {
                    
                    
                    UIView.animateWithDuration(0.4, animations: { () -> Void in
                        firstVCView.frame = CGRectOffset(firstVCView.frame, 0, -screenHeight)
                        secondVCView.frame = CGRectOffset(secondVCView.frame, 0, -screenHeight)
                        }) { (Finished) -> Void in
                            
                            if let navController = toViewController.navigationController {
                                navController.popToViewController(toViewController, animated: false)
                            }
                            
                    }

                    
                }
                else if id == "idSecondSegueUnwind" {
                    
                    firstVCView.frame = CGRectOffset(firstVCView.frame, 0, screenHeight)
                    firstVCView.transform = CGAffineTransformScale(firstVCView.transform, 0.001, 0.001)
                    
                    UIView.animateWithDuration(0.4, animations: { () -> Void in
                        secondVCView.transform = CGAffineTransformScale(secondVCView.transform, 0.001, 0.001)
                        secondVCView.frame = CGRectOffset(secondVCView.frame, 0, -screenHeight)
                        
                        firstVCView.transform = CGAffineTransformIdentity
                        firstVCView.frame = CGRectOffset(firstVCView.frame, 0, -screenHeight)
                        
                        }) { (Finished) -> Void in
                            
                            if let navController = toViewController.navigationController {
                                navController.popToViewController(toViewController, animated: false)
                            }
                    }
                }
            }

        }
    }
}
