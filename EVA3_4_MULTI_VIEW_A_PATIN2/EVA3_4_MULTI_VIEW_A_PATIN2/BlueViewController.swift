//
//  BlueViewController.swift
//  EVA3_4_MULTI_VIEW_A_PATIN2
//
//  Created by TEMPORAL2 on 04/05/17.
//  Copyright © 2017 comdanelly. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {
    @IBAction func btnAzul(sender: AnyObject) {
        let alert = UIAlertController(title: "Blue View Button Pressed", message: "You pressed the button on the blue view", preferredStyle: .Alert)
        let action = UIAlertAction(title: "Yep, I did", style: .Default, handler: nil)
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
