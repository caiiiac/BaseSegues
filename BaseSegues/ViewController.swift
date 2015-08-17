//
//  ViewController.swift
//  BaseSegues
//
//  Created by caiiiac on 15/8/6.
//  Copyright (c) 2015年 sun3d. All rights reserved.
//



import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func segueForUnwindingToViewController(toViewController: UIViewController, fromViewController: UIViewController, identifier: String?) -> UIStoryboardSegue {
        if let id = identifier {
            if id == "idFirstSegueUnwind" {
                let unwindSegue = FirstCustomSegueUnwind(identifier: id, source: fromViewController, destination: toViewController, performHandler: { () -> Void in
                    
                })
                return unwindSegue
            }
            else if id == "idSecondSegueUnwind" {
                let unwindSegue = SecondCustomSegueUnwind(identifier: identifier, source: fromViewController, destination: toViewController, performHandler: { () -> Void in
                    
                })
                return unwindSegue
            }

        }
        
        return super.segueForUnwindingToViewController(toViewController, fromViewController: fromViewController, identifier: identifier)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "idFirstSegue" {
            let secondVC = segue.destinationViewController as! SecondViewController
            secondVC.message = "Hello form the 1st View Controller"
            
        }
        else
        {
            self.messageLabel.text = "Welcome back!"
        }
    }

    @IBAction func returnFormSegueActions (sender: UIStoryboardSegue) {
        
        if sender.identifier == "idFirstSegueUnwind" {
            let originalColor = self.view.backgroundColor
            self.view.backgroundColor = UIColor.yellowColor()
            
            UIView.animateWithDuration(0.4, animations: { () -> Void in
                self.view.backgroundColor = originalColor
            })
        }
    }
}

