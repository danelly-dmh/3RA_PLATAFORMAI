//
//  ViewControllerAzul.swift
//  EVA3_3_MULTI_VIEW_A_PATIN
//
//  Created by TEMPORAL2 on 03/05/17.
//  Copyright © 2017 comdanelly. All rights reserved.
//

import UIKit

class ViewControllerAzul: UIViewController {
    @IBAction func btnAzul(sender: AnyObject) {
        let cAzul = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("cajaRosa") as UIViewController
        presentViewController(cAzul, animated: true, completion: nil)
        
    }

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

}
