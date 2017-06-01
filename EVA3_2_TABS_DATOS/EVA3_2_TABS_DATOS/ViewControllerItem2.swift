//
//  ViewControllerItem2.swift
//  EVA3_2_TABS_DATOS
//
//  Created by TEMPORAL2 on 02/05/17.
//  Copyright © 2017 comdanelly. All rights reserved.
//

import UIKit

class ViewControllerItem2: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("DOS view Did load")
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("DOS -view will appear")
        
        //let unoVC = self.tabBarController as! ViewControllerTab
        
        let misViewCtrl = self.tabBarController?.viewControllers //lista de viewcontroller
        let unoViewController = misViewCtrl![0] as! ViewControllerItem // accedemos l buscado
        unoViewController.sCade = "Seleccione dos"
        
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
