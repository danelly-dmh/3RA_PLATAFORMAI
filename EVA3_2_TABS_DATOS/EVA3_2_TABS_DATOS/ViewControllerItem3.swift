//
//  ViewControllerItem3.swift
//  EVA3_2_TABS_DATOS
//
//  Created by TEMPORAL2 on 02/05/17.
//  Copyright © 2017 comdanelly. All rights reserved.
//

import UIKit

class ViewControllerItem3: UITabBarController  {
    override func viewDidLoad() {
        super.viewDidLoad()
        print("TRES view Did load")
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("TRES-view will appear")
        
        let misViewCtrl = self.tabBarController?.viewControllers //lista de viewcontroller
        let unoViewController = misViewCtrl![0] as! ViewControllerItem // accedemos l buscado
        unoViewController.sCade = "Seleccione Tres"
        
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
