//
//  SecondViewController.swift
//  BaseSegues
//
//  Created by caiiiac on 15/8/6.
//  Copyright (c) 2015年 sun3d. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var messageLabel: UILabel!
    
    var message: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        messageLabel.text = message
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "idFirstSegueUnwind" {
            let firstVC = segue.destinationViewController as! ViewController
            firstVC.messageLabel.text = "You just come back from the 2nd VC"
        }
        
    }


}
