//
//  ShowLaunchScreen.swift
//  Electri-License
//
//  Created by Jim Witterschein on 3/12/16.
//  Copyright © 2016 State Exam Pass. All rights reserved.
//

import UIKit

class ShowLaunchScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        performSelector(Selector("showViewController"), withObject: nil, afterDelay: 3)
    }

    func showViewController()
    
    {
        performSegueWithIdentifier("showLaunchScreen", sender: self)
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

}
